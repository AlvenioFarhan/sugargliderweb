<div class="page-header">
    <center><h1>Login Admin</h1></center>
</div>
<div class="row">
    <div class="col-md-4">
    </div>
    <div class="col-md-4">        
        <?php if($_POST) include 'aksi.php'; ?>
        <form method="post">                        
            <div class="form-group">
                <label>Username</label>
                <input type="text" class="form-control" placeholder="Username" name="user" autofocus />
            </div>
            <div class="form-group">            
                <label>Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pass" />  
            </div>      
            <div class="form-group">                
                <button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-log-in"></span> Login</button>
                
            </div>        
        </form>      
    </div>
    <div class="col-md-4">
    </div>
</div>