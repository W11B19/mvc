<?php

class UsersController extends Controller{

    public function __construct($data = array()){
        parent::__construct($data);
        $this->model = new User();
    }

    public function admin_login(){
        if ( $_POST && isset($_POST['login']) && isset($_POST['password']) ){
            $user = $this->model->getByLogin($_POST['login']);
            $hash = password_verify($_POST['password'], $user['password']);
            
            if ( $user && $user['isActive'] && $hash){
                Session::set('login', $user['name']);
                Session::set('admin', $user['isAdmin']);
            }
            $redirect = Session::get('redirect');
            if ($redirect){
                Router::redirect('/'.$redirect);
            }
        }
    }

    public function admin_logout(){
        Session::destroy();
        Router::redirect('/blog');
    }

    public function admin_add()
    {
        // TODO: add admin user
    }
}