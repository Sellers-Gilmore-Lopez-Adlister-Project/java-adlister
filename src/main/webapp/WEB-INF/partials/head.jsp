<title>${param.title}</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://kit.fontawesome.com/5d0c1b436d.js" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" >
<!-- Need to make the dropdown Button to work  -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>



<style>
    body{
        box-sizing: border-box;
        /*Crazy Background*/
        background: linear-gradient(to right, #2a5298, #1e3c72);
        height: 100vh;
    }

    /*Login Form*/
    .formContainer{
        max-width: 420px;
        min-width: 120px;
        background: rgb(247,246,255);
        margin-top: 10em;
        padding: 0 2em 1em 2em;
        border-radius:12px;
        box-shadow: rgba(0, 0, 0, 0.16) 0 3px 6px, rgba(0, 0, 0, 0.23) 0 3px 6px;
    }
    /*Header in Form*/
    .formContainer>h1{
        color: #1e1e1e;
        font-weight: bold;
    }
    /*small text*/
    .noAccountPara{
        color: #b5b4b4;
    }
    /*Labels*/
    .loginLabel{
        font-weight:400;
        font-size: 16px;
        color: #1e1e1e;
    }
    /*Button*/
    .loginButton{
        background-image: linear-gradient(#51A9EE, #147BCD);
        border: 1px solid #0077CC;
        border-radius: 12px;
        color: #FFF;
        cursor: pointer;
        font-size: 16px;
        font-weight: 400;
        line-height: 1.47059;
        padding: 4px 15px;
        white-space: nowrap;
    }
    .loginButton:hover {
        background-image: linear-gradient(to right, #2a5298, #1e3c72);
        border-color: #1482D0;
        text-decoration: none;
    }
    .loginButton:active {
        background-image: linear-gradient(#3D94D9, #0067B9);
        border-color: #006DBC;
        outline: none;
    }
    .loginButton:focus {
        box-shadow: rgba(131, 192, 253, 0.5) 0 0 0 3px;
        outline: none;
    }


</style>