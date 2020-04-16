<?php

class Blog extends Model{

    public function getList($only_published = false){
        $page = $_GET['p'] ?? 1;
        $tag = $_GET['tag'] ?? '';

        $sql = "SELECT p.*, u.name FROM ".Config::get('db.db_prefix')."posts p, ".Config::get('db.db_prefix')."users u WHERE p.publishedby=u.id";
        if ( $only_published ){
            $sql .= " and published = 1";
        }
        if ( $tag ){
            $sqlTag = "SELECT distinct postid from ".Config::get('db.db_prefix')."tag_post WHERE tagid={$tag}";
            $tagPostList = $this->db->query($sqlTag);
            $tagPostStr = '';
            foreach($tagPostList as $tagPost){

                $tagPostStr .= $tagPost['postid'].",";
            }
            if ($tagPostStr){
                $tagPostStr = trim($tagPostStr, ",");
                $sql .= " and p.id IN ({$tagPostStr})";
            }
        }
        if ( $page ){
            $sql .= " limit ".strval(($page - 1)*6).",6";
        }

        return $this->db->query($sql);
    }

    public function getPages($only_published = false){
        $sql = "SELECT count(id) cnt FROM ".Config::get('db.db_prefix')."posts WHERE 1";
        if ( $only_published ){
            $sql .= " and published = 1";
        }
        $r =  $this->db->query($sql);
        return (integer)($r[0]['cnt'] / 6);
    }

    public function getTags($only_published = false){
        $sql = "SELECT DISTINCT t.id,t.title FROM ".Config::get('db.db_prefix')."tag_post tp, ".Config::get('db.db_prefix')."posts p, ".Config::get('db.db_prefix')."tags t WHERE tp.postid=p.id AND tp.tagid=t.id";
        if ( $only_published ){
            $sql .= " and published = 1";
        }
        return $this->db->query($sql);
    }    

    public function getByAlias($alias){
        $alias = $this->db->escape($alias);
        $sql = "select * from ".Config::get('db.db_prefix')."posts where alias = '{$alias}' limit 1";
        $result = $this->db->query($sql);
        $publishedby = $result[0]['publishedby'];
        $categoryid = $result[0]['categoryid'];
        
        $sql = "select * from ".Config::get('db.db_prefix')."users where id = {$publishedby} limit 1";
        $user = $this->db->query($sql);
        $result[0]['username'] = $user[0]['name'];

        $sql = "select * from ".Config::get('db.db_prefix')."category where id = {$categoryid} limit 1";
        $category = $this->db->query($sql);
        $result[0]['category'] = $category[0]['title'];

        return $result[0] ?? null;
    }

    public function getById($id){
        $id = (int)$id;
        $sql = "select * from pages where id = '{$id}' limit 1";
        $result = $this->db->query($sql);
        return isset($result[0]) ? $result[0] : null;
    }

    public function save($data, $id = null){
        if ( !isset($data['alias']) || !isset($data['title']) || !isset($data['content']) ){
            return false;
        }

        $id = (int)$id;
        $alias = $this->db->escape($data['alias']);
        $title = $this->db->escape($data['title']);
        $content = $this->db->escape($data['content']);
        $is_published = isset($data['is_published']) ? 1 : 0;

        if ( !$id ){ // Add new record
            $sql = "
                insert into pages
                   set alias = '{$alias}',
                       title = '{$title}',
                       content = '{$content}',
                       is_published = {$is_published}
            ";
        } else { // Update existing record
            $sql = "
                update pages
                   set alias = '{$alias}',
                       title = '{$title}',
                       content = '{$content}',
                       is_published = {$is_published}
                   where id = {$id}
            ";
        }

        return $this->db->query($sql);
    }

    public function delete($id){
        $id = (int)$id;
        $sql = "delete from pages where id = {$id}";
        return $this->db->query($sql);
    }

}