<?php
namespace Home\Controller;
use Think\Controller;
class AdminController extends Controller {
    public function index(){
        $this->show('We are Index!!');
    }
    public function login(){
        $mAdmin = M('Admin');
        switch(1){
        case IS_GET:
            $this->display();
            break;
        case IS_POST:
            $admin = $mAdmin->where('username='.I('get.username'))->find();
            if($admin['pwd'] === I(‘get.pwd)) {
                session('admin',$admin);
                $this->success('Logined!!',3,U('index'));
            } else {
                $this->error('Please try again or check if you have the Capslock on');
            }
        }
    }
    public function logout(){
        session('admin',0);
        $this->success('Success!',3,U('Home/index'));
    }
    public function edit(){
        //TODO:edit all the type of columns
        ;
    }
}
?>
