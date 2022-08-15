<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Guryosamo.LandinPage.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>guryosamo</title>
    <!-- CSS files -->
    <link href="../dist/css/tabler.min.css" rel="stylesheet" />
    <link href="../dist/css/tabler-flags.min.css" rel="stylesheet" />
    <link href="../dist/css/tabler-payments.min.css" rel="stylesheet" />
    <link href="./dist/css/tabler-vendors.min.css" rel="stylesheet" />
    <link href="../dist/css/demo.min.css" rel="stylesheet" />
    <link href="assets/css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <header class="header">
      <div class="logo">
        <img class="logo-image" src="assets/images/guryosamo.png" alt="" />
        <h1 class="logo-name">Guryosamo</h1>
      </div>
      <nav class="nav justify-content-center align-content-center">
        <ul class="d-flex align-content-center justify-content-center">
          <li class="nav_item"><a>Home</a></li>
          <li class="nav_item"><a>Services</a></li>
          <li class="nav_item"><a>About</a></li>
          <li class="nav_item"><a>Contact Us</a></li>
          
     <li>
         <a href="../Auth/SignIn.aspx" class=" nav-link mt-1">
             <!-- Download SVG icon from http://tabler-icons.io/i/user-circle -->
             <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-md text-white" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                 <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                 <circle cx="12" cy="12" r="9" />
                 <circle cx="12" cy="10" r="3" />
                 <path d="M6.168 18.849a4 4 0 0 1 3.832 -2.849h4a4 4 0 0 1 3.834 2.855" />
             </svg>
         </a>
     </li>
        </ul>
          
     
     
      </nav>
    </header>

    <section class="hero">
      <div class="hero_info">
        <p class="lead-1">QOYSDHIS WAA QARAN DHIS</p>
        <h1>Hoyga Horumarinta Qoyska</h1>
        <p class="lead">
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. In convallis
          pretium vel enim, lectus tortor.
        </p>
      </div>
      <div>
        <img class="hero-image" src="assets/images/guri.png" alt="" />
      </div>
    </section>

    <section class="services">
      <div class="section-title">
        <p class="small_title">bulshada</p>
        <h2 class="big_title">Addeegyada</h2>
      </div>
      <div class="servl">
        <div class="service_list">
          <div class="card">
            <div class="card-title">
              <img
                class="icon"
                src="assets/images/icons/icons8-idea-384.png"
                alt=""
              />
              <h3 class="itile">Talo Bixin</h3>
            </div>
            <div class="card-body">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor
                venenatis nisl.
              </p>
            </div>
          </div>
          <div class="card taageero">
            <div class="card-title">
              <img
                class="icon"
                src="assets/images/icons/icons8-tree-planting-100.png"
                alt=""
              />
              <h3 class="itile">Taageero</h3>
            </div>
            <div class="card-body">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor
                venenatis nisl.
              </p>
            </div>
          </div>
          <div class="card tababarro">
            <div class="card-title">
              <img
                class="icon"
                src="assets/images/icons//icons8-training-100.png"
                alt=""
              />
              <h3 class="itile">Tababarro</h3>
            </div>
            <div class="card-body">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor
                venenatis nisl.
              </p>
            </div>
          </div>
        </div>
        <div class="service_list">
          <div class="card cilmibaaris">
            <div class="card-title">
              <img
                class="icon"
                src="assets/images/icons/icons8-research-60.png"
                alt=""
              />
              <h3 class="itile">Cilmi Baaris</h3>
            </div>
            <div class="card-body">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor
                venenatis nisl.
              </p>
            </div>
          </div>
          <div class="card wacyigelin">
            <div class="card-title">
              <img
                class="icon"
                src="assets/images/icons/icons8-megaphone-96.png"
                alt=""
              />
              <h3 class="itile">Wacyigelin</h3>
            </div>
            <div class="card-body">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor
                venenatis nisl.
              </p>
            </div>
          </div>
          <div class="card dood">
            <div class="card-title">
              <img
                class="icon"
                src="assets/images/icons/icons8-idea-384.png"
                alt=""
              />
              <h3 class="itile">Dood Qoys</h3>
            </div>
            <div class="card-body">
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tortor
                venenatis nisl.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="Kulamada">
      <div class="section-title">
        <p class="small_title">Kulamada</p>
        <h2 class="big_title">Martida Madasha</h2>
      </div>
      <div class="marti">
        <img
          class="marti-image"
          src="assets/images/abdi yaxyi.jpg"
          alt=""
          
        />
        <img
          class="marti-image"
          src="assets/images/zahra.jpg"
          alt=""
     
        />

        <img class="marti-image" src="/assets/images/s.jpg"" alt="" srcset="" />
        <img class="marti-image" src="/assets/images/s2.jpg" alt="" srcset="" />
        <img class="marti-image" src="/assets/images/m.jpg" alt="" srcset="" />
      </div>
    </section>
    <section class="qoysaska">
      <div class="section-title">
        <p class="small_title">qoysaska</p>
        <h2 class="big_title">Iscalfaday</h2>

        <div class="sawirada-qoysaaka">
          <img
            class="image-qoys"
            src="assets/images/qoysas/qoys1.jpg"
            alt=""
     
          />
          <img
            class="image-qoys"
            src="assets/images/qoysas/qoys2.jpg"
            alt=""

          />
          <img
            class="image-qoys"
            src="assets/images/qoysas/qoys3.jpg"
            alt=""

          />
          <img
            class="image-qoys"
            src="assets/images/qoysas/qoys4.jpg"
            alt=""
      
          />
          <img
            class="image-qoys"
            src="assets/images/qoysas/qoys4.jpg"
            alt=""
   
          />
        </div>
      </div>
    </section>
    <section class="qoraal">
      <div class="box-qoute">
        <div class="text">
          <i class="fa fa-quote-right fa1" aria-hidden="true"></i>
          <i class="fa fa-quote-left fa2" aria-hidden="true"></i>
          <div>
            <p>
              Xulashada haweenka waa sidii dagaal aad galeyso oo aadan ogeyn
              dhibka iyo dheefka aad kala kulmeyso
            </p>
          </div>
        </div>
      </div>
      <div class="question">
        <h2>GUurdoon matahay?</h2>
        <h3>soo xulo qofki aad reer la dhisan lahay?</h3>
        <a href="../Auth/SignIn.aspx" class="btn">Is diiwaangali?</a>
      </div>
    </section>

    <footer>
      <div class="section-footer">
        <h3>About</h3>
        <h3>Contac US</h3>
        <h3>Location</h3>
      </div>
        <ul>
        <li class="list-inline-item">
                  Copyright &copy; Guryosamo2021
                  <a href="." class="link-secondary"></a>.
                  All rights reserved.
                </li>
                <%--<li class="list-inline-item">
                  <a href="./changelog.html" class="link-secondary" rel="noopener">
                    v1.0.0-beta5
                  </a>
                </li>--%>
              </ul>
      <%--<p>Copyright @ 2021Guryosamo .all right reserved.</p>--%>
    </footer>
    </form>
</body>
</html>
