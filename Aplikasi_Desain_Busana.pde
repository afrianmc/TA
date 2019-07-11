//Last Update 23 juni 2019

ClassOneDropDownMenu[] menuList = new ClassOneDropDownMenu[5];
PGraphics[] pg = new PGraphics[24];
PrintWriter output;
ArrayList<Node> nodes, rok1, rok2, rok3, garisRok, garisRok2, polaRok1, polaRok2, polaRok3, polaRok4, polaRok5;
ArrayList<Node> atasan1, atasan2, atasan3, garisAtasan, garisAtasan2, polaAtasan1, polaAtasan2, polaAtasan3, polaAtasan4, polaAtasan5, polaAtasan6, polaAtasan7,polaAtasan8;
ArrayList<Node> leher1, leher2, leher3, garisLeher, garisLeher2, polaLeher1, polaLeher2, polaLeher3, polaLeher4, polaLeher5;
ArrayList<Node> lengan1, lengan2, lengan3,lengan4, garisLengan, garisLengan2, polaLengan1, polaLengan2, polaLengan3, polaLengan4, polaLengan5;
ArrayList<Node> gaun1, gaun2, gaun3, garisGaun, garisGaun2, polaGaun1, polaGaun2, polaGaun3, polaGaun4, polaGaun5, polaGaun6, polaGaun7, polaGaun8;
ArrayList<Node> celana1, celana2, celana3, garisCelana, garisCelana2, polaCelana1, polaCelana2, polaCelana3, polaCelana4, polaCelana5, polaCelana6, polaCelana7, polaCelana8;
ArrayList<Node> atasanlk1, atasanlk2, atasanlk3, garisAtasanlk, garisAtasanlk2, polaAtasanlk1, polaAtasanlk2, polaAtasanlk3, polaAtasanlk4, polaAtasanlk5,polaAtasanlk6, polaAtasanlk7, polaAtasanlk8;
ArrayList<Node> leherlk1, leherlk2, leherlk3,lenganlk4, garisLeherlk, garisLeherlk2, polaLeherlk1, polaLeherlk2, polaLeherlk3, polaLeherlk4, polaLeherlk5;
ArrayList<Node> lenganlk1, lenganlk2, lenganlk3, garisLenganlk, garisLenganlk2, polaLenganlk1, polaLenganlk2, polaLenganlk3, polaLenganlk4, polaLenganlk5;
ArrayList<Node> celanalk1, celanalk2, celanalk3, garisCelanalk, garisCelanalk2, polaCelanalk1, polaCelanalk2, polaCelanalk3, polaCelanalk4, polaCelanalk5, polaCelanalk6, polaCelanalk7, polaCelanalk8;
ArrayList<Floor> floors;
String[] urlTex1 = new String[56], urlTex2 = new String[56], urlTex3 = new String[56];
String urlTexture;
PImage[] img2d = new PImage[21], imgtex1 = new PImage[56], imgtex2 = new PImage[56],  
         imgRok = new PImage[25], imgAtasan = new PImage[10],imgLeher = new PImage[19], imgLengan = new PImage[19], 
         imgGaun = new PImage[13], imgCelana = new PImage[7], //wanita
         imgAtasanLk = new PImage[7], imgLeherLk = new PImage[19], imgLenganLk = new PImage[13],imgCelanaLk = new PImage[7],
         imgWanita = new PImage[3], imgPria = new PImage[3]; //lakilaki
         
PImage imageTexture;
boolean pgTutor = true, pgAction = true, pgTex1 = false, pgTex2 = false, pgUkuranW = false, pgUkuranP= false, 
        pgRok = false, pgAtasan = false, pgLeher = false,pgLengan = false, pgGaun = false, pgCelana = false, 
        pgAtasanLk = false,pgLeherLk = false, pgLenganLk, pgCelanaLk = false, pgUkuranS = false, pgUkuranM = false, pgUkuranL = false;
boolean grid2D = true, threeDimension = false, controlDown = false, shiftDown = false, newProject = true;
boolean citraKain = false;
boolean rok = false, atasan = false, leher= false, lengan = false, gaun = false, celana = false, 
        atasanlk = false, leherlk = false, lenganlk = false, celanalk = false;
int nodesSize = 0, selectedTex = 0, templateRok = 0, templateAtasan = 0, templateLeher = 0, templateLengan = 0,//geserNode = -1,
    templateGaun = 0, templateCelana = 0, templateAtasanlk = 0, templateLeherlk = 0, templateLenganlk = 0, templateCelanalk = 0;
int c;

void setup() {
  //size(1200, 500, P3D);
  fullScreen(P3D);
  noSmooth();
  pg[1] = createGraphics(width, 25, P3D); //menubar
  pg[2] = createGraphics(width/3, height-25, P3D); //menubar
  for (int i=3; i<=9; i++)
    pg[i] = createGraphics(width/3, height-25, P3D); //draw 2D
  pg[10] = createGraphics(width/3, 300, P3D); //menubar
  pg[11] = createGraphics(width/3, height-250, P3D); //menubar
  pg[12] = createGraphics(width/3, height-250, P3D); // Template Atasan
  pg[13] = createGraphics(width/3, height-250, P3D); // Template Rok
  pg[14] = createGraphics(width/3, height-250, P3D); // Template Gaun
  pg[15] = createGraphics(width/3, height-250, P3D); // Template Celana
  pg[16] = createGraphics(width/3, height-250, P3D); //Template Atasan Laki-laki
  pg[17] = createGraphics(width/3, height-250, P3D); //Template Celana Laki-laki
  pg[18] = createGraphics(width/3, height-250, P3D); //template Leher wanita
  pg[19] = createGraphics(width/3, height-250, P3D); // template lengan wanita
  pg[20] = createGraphics(width/3, height-250, P3D); // template leher laki-laki
  pg[21] = createGraphics(width/3, height-250, P3D); //template lengan laki-laki
  pg[22] = createGraphics(width/3, height-250, P3D);
  pg[23] = createGraphics(width/3, height-250, P3D);
  
  nodes = new ArrayList<Node>();
  rok1 = new ArrayList<Node>();
  rok2 = new ArrayList<Node>();
  rok3 = new ArrayList<Node>();
  garisRok = new ArrayList<Node>();
  garisRok2 = new ArrayList<Node>();
  polaRok1 = new ArrayList<Node>();
  polaRok2 = new ArrayList<Node>();
  polaRok3 = new ArrayList<Node>();
  polaRok4 = new ArrayList<Node>();
  polaRok5 = new ArrayList<Node>();
  
  atasan1 = new ArrayList<Node>();
  atasan2 = new ArrayList<Node>();
  atasan3 = new ArrayList<Node>();
  garisAtasan = new ArrayList<Node>();
  garisAtasan2 = new ArrayList<Node>();
  polaAtasan1 = new ArrayList<Node>();
  polaAtasan2 = new ArrayList<Node>();
  polaAtasan3 = new ArrayList<Node>();
  polaAtasan4 = new ArrayList<Node>();
  polaAtasan5 = new ArrayList<Node>();
  polaAtasan6 = new ArrayList<Node>();
  polaAtasan7 = new ArrayList<Node>();
  polaAtasan8 = new ArrayList<Node>();
  
  gaun1 = new ArrayList<Node>();
  gaun2 = new ArrayList<Node>();
  gaun3 = new ArrayList<Node>();
  garisGaun = new ArrayList<Node>();
  garisGaun2 = new ArrayList<Node>();
  polaGaun1 = new ArrayList<Node>();
  polaGaun2 = new ArrayList<Node>();
  polaGaun3 = new ArrayList<Node>();
  polaGaun4 = new ArrayList<Node>();
  polaGaun5 = new ArrayList<Node>();
  polaGaun6 = new ArrayList<Node>();
  polaGaun7 = new ArrayList<Node>();
  polaGaun8 = new ArrayList<Node>();
  
  celana1 = new ArrayList<Node>();
  celana2 = new ArrayList<Node>();
  celana3 = new ArrayList<Node>();
  garisCelana = new ArrayList<Node>();
  garisCelana2 = new ArrayList<Node>();
  polaCelana1 = new ArrayList<Node>();
  polaCelana2 = new ArrayList<Node>();
  polaCelana3 = new ArrayList<Node>();
  polaCelana4 = new ArrayList<Node>();
  polaCelana5 = new ArrayList<Node>();
  polaCelana6 = new ArrayList<Node>();
  polaCelana7 = new ArrayList<Node>();
  polaCelana8 = new ArrayList<Node>();
  
  atasanlk1 = new ArrayList<Node>();
  atasanlk2 = new ArrayList<Node>();
  atasanlk3 = new ArrayList<Node>();
  garisAtasanlk = new ArrayList<Node>();
  garisAtasanlk2 = new ArrayList<Node>();
  polaAtasanlk1 = new ArrayList<Node>();
  polaAtasanlk2 = new ArrayList<Node>();
  polaAtasanlk3 = new ArrayList<Node>();
  polaAtasanlk4 = new ArrayList<Node>();
  polaAtasanlk5 = new ArrayList<Node>();
  polaAtasanlk6 = new ArrayList<Node>();
  polaAtasanlk7 = new ArrayList<Node>();
  polaAtasanlk8 = new ArrayList<Node>();
  
  celanalk1 = new ArrayList<Node>();
  celanalk2 = new ArrayList<Node>();
  celanalk3 = new ArrayList<Node>();
  garisCelanalk = new ArrayList<Node>();
  garisCelanalk2 = new ArrayList<Node>();
  polaCelanalk1 = new ArrayList<Node>();
  polaCelanalk2 = new ArrayList<Node>();
  polaCelanalk3 = new ArrayList<Node>();
  polaCelanalk4 = new ArrayList<Node>();
  polaCelanalk5 = new ArrayList<Node>();
  polaCelanalk6 = new ArrayList<Node>();
  polaCelanalk7 = new ArrayList<Node>();
  polaCelanalk8 = new ArrayList<Node>();
  
  leher1 = new ArrayList<Node>();
  leher2 = new ArrayList<Node>();
  leher3 = new ArrayList<Node>();
  garisLeher = new ArrayList<Node>();
  garisLeher2 = new ArrayList<Node>();
  polaLeher1 = new ArrayList<Node>();
  polaLeher2 = new ArrayList<Node>();
  polaLeher3 = new ArrayList<Node>();
  polaLeher4 = new ArrayList<Node>();
  polaLeher5 = new ArrayList<Node>();
  
  lengan1 = new ArrayList<Node>();
  lengan2 = new ArrayList<Node>();
  lengan3 = new ArrayList<Node>();
  lengan4 = new ArrayList<Node>();
  garisLengan = new ArrayList<Node>();
  garisLengan2 = new ArrayList<Node>();
  polaLengan1 = new ArrayList<Node>();
  polaLengan2 = new ArrayList<Node>();
  polaLengan3 = new ArrayList<Node>();
  polaLengan4 = new ArrayList<Node>();
  polaLengan5 = new ArrayList<Node>();
  
  leherlk1 = new ArrayList<Node>();
  leherlk2 = new ArrayList<Node>();
  leherlk3 = new ArrayList<Node>();
  garisLeherlk = new ArrayList<Node>();
  garisLeherlk2 = new ArrayList<Node>();
  polaLeherlk1 = new ArrayList<Node>();
  polaLeherlk2 = new ArrayList<Node>();
  polaLeherlk3 = new ArrayList<Node>();
  polaLeherlk4 = new ArrayList<Node>();
  polaLeherlk5 = new ArrayList<Node>();

  lenganlk1 = new ArrayList<Node>();
  lenganlk2 = new ArrayList<Node>();
  lenganlk3 = new ArrayList<Node>();
  lenganlk4 = new ArrayList<Node>();
  garisLenganlk = new ArrayList<Node>();
  garisLenganlk2 = new ArrayList<Node>();
  polaLenganlk1 = new ArrayList<Node>();
  polaLenganlk2 = new ArrayList<Node>();
  polaLenganlk3 = new ArrayList<Node>();
  polaLenganlk4 = new ArrayList<Node>();
  polaLenganlk5 = new ArrayList<Node>();
  urlTexture = "Textures/a/imgtex_default.jpg";
  defineMenus();

  for (int i=1; i<urlTex1.length; i++) {
    urlTex1[i] = "Textures/a/imgtex ("+i+").jpg";
    imgtex1[i] = loadImage(urlTex1[i]);
  }
  for (int i=1; i<urlTex2.length; i++) {
    urlTex2[i] = "Textures/b/imgtex ("+i+").jpg";
    imgtex2[i] = loadImage(urlTex2[i]);
  }
  for (int i=1; i<imgRok.length; i++) {
    imgRok[i] = loadImage("Busana_Rok/Rok_"+i+".jpg");
  }
  for (int i=1; i<imgAtasan.length; i++) {
    imgAtasan[i] = loadImage("Busana_Atasan/Atasan_"+i+".jpg");
  }
  for (int i=1; i<imgLeher.length; i++) {
    imgLeher[i] = loadImage("Busana_Leher/Leher_"+i+".jpg");
  }
  for (int i=1; i<imgLengan.length; i++) {
    imgLengan[i] = loadImage("Busana_Lengan/Lengan_"+i+".jpg");
  }
  for (int i=1; i<imgGaun.length; i++) {
    imgGaun[i] = loadImage("Busana_Gaun/Gaun_"+i+".jpg");
  }
  for (int i=1; i<imgCelana.length; i++) {
    imgCelana[i] = loadImage("Busana_Celana/Celana_"+i+".jpg");
  }
  for (int i=1; i<imgAtasanLk.length; i++) {
    imgAtasanLk[i] = loadImage("Busana_AtasanLk/AtasanLk_"+i+".jpg");
  }
  for (int i=1; i<imgCelanaLk.length; i++) {
    imgCelanaLk[i] = loadImage("Busana_CelanaLk/CelanaLk_"+i+".jpg");
  }
  for (int i=1; i<imgLeherLk.length; i++) {
    imgLeherLk[i] = loadImage("Busana_LeherLk/LeherLk_"+i+".jpg");
  }
  for (int i=1; i<imgLenganLk.length; i++) {
    imgLenganLk[i] = loadImage("Busana_LenganLk/LenganLk_"+i+".jpg");
  }
  for (int i=1; i<imgWanita.length; i++) {
    imgWanita[i] = loadImage("Ukuran_Wanita/Wanita_"+i+".jpg");
  }
  for (int i=1; i<imgPria.length; i++) {
    imgPria[i] = loadImage("Ukuran_Pria/Pria_"+i+".jpg");
  }
}

public void draw() {
  drawPgMenuBar();
  drawPgVisualisasiPola();
  drawPgVisualisasiBusana();
  drawPgTemplateRok();
  drawPgTemplateAtasan();
  drawPgTemplateLeher();
  drawPgTemplateLengan();
  drawPgTemplateGaun();
  drawPgTemplateCelana();
  drawPgTemplateAtasanLk();
  drawPgTemplateCelanaLk();
  drawPgTemplateLeherLk();
  drawPgTemplateLenganLk();
  drawPgTemplateUkuranW();
  drawPgTemplateUkuranP();
  drawPgTutorial();
  drawPgAction();
  drawBasement();
  imagePgs();
  drawMenuBar();
}

public void base() {  
  pg[3].beginDraw();
  pg[3].fill(35);
  //if(pgRok) {
  if (rok) {

    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = rok1.size()-1; i >= 0; i--)
      pg[3].vertex(rok1.get(i).x, rok1.get(i).z-pg[1].height);// rok1.get(i).x1, rok1.get(i).y1);
    //pg[3].vertex(rok1.get(3).x, rok1.get(3).z-pg[1].height, 0, 0);
    //pg[3].vertex(rok1.get(2).x, rok1.get(2).z-pg[1].height, 100, 0);
    //pg[3].vertex(rok1.get(1).x, rok1.get(1).z-pg[1].height, 100, 100);
    //pg[3].vertex(rok1.get(0).x, rok1.get(0).z-pg[1].height, 0, 100);
    pg[3].endShape(CLOSE); 

    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = rok2.size()-1; i >= 0; i--)
      pg[3].vertex(rok2.get(i).x, rok2.get(i).z-pg[1].height);//,rok2.get(i).x1, rok2.get(i).y1);
    //pg[3].vertex(rok2.get(3).x, rok2.get(3).z-pg[1].height, 0, 0);
    //pg[3].vertex(rok2.get(2).x, rok2.get(2).z-pg[1].height, 100, 0);
    //pg[3].vertex(rok2.get(1).x, rok2.get(1).z-pg[1].height, 100, 100);
    //pg[3].vertex(rok2.get(0).x, rok2.get(0).z-pg[1].height, 0, 100);
    pg[3].endShape(CLOSE);

    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = rok3.size()-1; i >= 0; i--)
      pg[3].vertex(rok3.get(i).x, rok3.get(i).z-pg[1].height);//rok3.get(i).x1, rok3.get(i).y1
    pg[3].endShape(CLOSE);

    pg[3].beginShape(LINES);
    for (int i = garisRok.size()-1; i >= 0; i--)
      pg[3].vertex(garisRok.get(i).x, garisRok.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for (int i = garisRok2.size()-1; i >= 0; i--)
      pg[3].vertex(garisRok2.get(i).x, garisRok2.get(i).z-pg[1].height);
    pg[3].endShape();
  }
  //else if(pgAtasan) {
  if (atasan) {
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = atasan1.size()-1; i >= 0; i--)
      pg[3].vertex(atasan1.get(i).x, atasan1.get(i).z-pg[1].height);//atasan1.get(i).x1, atasan1.get(i).y1
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = atasan2.size()-1; i >= 0; i--)
      pg[3].vertex(atasan2.get(i).x, atasan2.get(i).z-pg[1].height);//,atasan2.get(i).x1, atasan2.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = atasan3.size()-1; i >= 0; i--)
      pg[3].vertex(atasan3.get(i).x, atasan3.get(i).z-pg[1].height);//, atasan3.get(i).x1, atasan3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for (int i = garisAtasan.size()-1; i >= 0; i--)
      pg[3].vertex(garisAtasan.get(i).x, garisAtasan.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for (int i = garisAtasan2.size()-1; i >= 0; i--)
      pg[3].vertex(garisAtasan2.get(i).x, garisAtasan2.get(i).z-pg[1].height);
    pg[3].endShape();
  }
  //if(pgLengan)
  if (lengan) {
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = lengan1.size()-1; i >= 0; i--)
      pg[3].vertex(lengan1.get(i).x, lengan1.get(i).z-pg[1].height);//lengan1.get(i).x1, lengan1.get(i).y1
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = lengan2.size()-1; i >= 0; i--)
      pg[3].vertex(lengan2.get(i).x, lengan2.get(i).z-pg[1].height);//,lengan2.get(i).x1, lengan2.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = lengan3.size()-1; i >= 0; i--)
      pg[3].vertex(lengan3.get(i).x, lengan3.get(i).z-pg[1].height);//, lengan3.get(i).x1, lengan3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = lengan4.size()-1; i >= 0; i--)
      pg[3].vertex(lengan4.get(i).x, lengan4.get(i).z-pg[1].height);//, lengan3.get(i).x1, lengan3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for (int i = garisLengan.size()-1; i >= 0; i--)
      pg[3].vertex(garisLengan.get(i).x, garisLengan.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for (int i = garisLengan2.size()-1; i >= 0; i--)
      pg[3].vertex(garisLengan2.get(i).x, garisLengan2.get(i).z-pg[1].height);
    pg[3].endShape();
  }
  //else if(pgLenganlk)
  if (lenganlk) {
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = lenganlk1.size()-1; i >= 0; i--)
      pg[3].vertex(lenganlk1.get(i).x, lenganlk1.get(i).z-pg[1].height);//lengan1.get(i).x1, lengan1.get(i).y1
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = lenganlk2.size()-1; i >= 0; i--)
      pg[3].vertex(lenganlk2.get(i).x, lenganlk2.get(i).z-pg[1].height);//,lengan2.get(i).x1, lengan2.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = lenganlk3.size()-1; i >= 0; i--)
      pg[3].vertex(lenganlk3.get(i).x, lenganlk3.get(i).z-pg[1].height);//, lengan3.get(i).x1, lengan3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = lenganlk4.size()-1; i >= 0; i--)
      pg[3].vertex(lenganlk4.get(i).x, lenganlk4.get(i).z-pg[1].height);//, lengan3.get(i).x1, lengan3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for (int i = garisLenganlk.size()-1; i >= 0; i--)
      pg[3].vertex(garisLenganlk.get(i).x, garisLenganlk.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for (int i = garisLenganlk2.size()-1; i >= 0; i--)
      pg[3].vertex(garisLenganlk2.get(i).x, garisLenganlk2.get(i).z-pg[1].height);
    pg[3].endShape();
  }
  
  //else if(pgLeher)
  if (leher) {
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = leher1.size()-1; i >= 0; i--)
      pg[3].vertex(leher1.get(i).x, leher1.get(i).z-pg[1].height);//leher1.get(i).x1, leher1.get(i).y1
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = leher2.size()-1; i >= 0; i--)
      pg[3].vertex(leher2.get(i).x, leher2.get(i).z-pg[1].height);//,leher2.get(i).x1, leher2.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = leher3.size()-1; i >= 0; i--)
      pg[3].vertex(leher3.get(i).x, leher3.get(i).z-pg[1].height);//, leher3.get(i).x1, leher3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for (int i = garisLeher.size()-1; i >= 0; i--)
      pg[3].vertex(garisLeher.get(i).x, garisLeher.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for (int i = garisLeher2.size()-1; i >= 0; i--)
      pg[3].vertex(garisLeher2.get(i).x, garisLeher2.get(i).z-pg[1].height);
    pg[3].endShape();
  }
  
  if (leherlk) {
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = leherlk1.size()-1; i >= 0; i--)
      pg[3].vertex(leherlk1.get(i).x, leherlk1.get(i).z-pg[1].height);//leher1.get(i).x1, leher1.get(i).y1
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = leherlk2.size()-1; i >= 0; i--)
      pg[3].vertex(leherlk2.get(i).x, leherlk2.get(i).z-pg[1].height);//,leher2.get(i).x1, leher2.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = leherlk3.size()-1; i >= 0; i--)
      pg[3].vertex(leherlk3.get(i).x, leherlk3.get(i).z-pg[1].height);//, leher3.get(i).x1, leher3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for (int i = garisLeherlk.size()-1; i >= 0; i--)
      pg[3].vertex(garisLeherlk.get(i).x, garisLeherlk.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for (int i = garisLeherlk2.size()-1; i >= 0; i--)
      pg[3].vertex(garisLeherlk2.get(i).x, garisLeherlk2.get(i).z-pg[1].height);
    pg[3].endShape();
  }

  //else if(pgGaun) {
  if (gaun) {
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = gaun1.size()-1; i >= 0; i--)
      pg[3].vertex(gaun1.get(i).x, gaun1.get(i).z-pg[1].height); //,gaun1.get(i).x1, gaun1.get(i).y1
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = gaun2.size()-1; i >= 0; i--)
      pg[3].vertex(gaun2.get(i).x, gaun2.get(i).z-pg[1].height);//,gaun2.get(i).x1, gaun2.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = gaun3.size()-1; i >= 0; i--)
      pg[3].vertex(gaun3.get(i).x, gaun3.get(i).z-pg[1].height);//,gaun3.get(i).x1, gaun3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for (int i = garisGaun.size()-1; i >= 0; i--)
      pg[3].vertex(garisGaun.get(i).x, garisGaun.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for (int i = garisGaun2.size()-1; i >= 0; i--)
      pg[3].vertex(garisGaun2.get(i).x, garisGaun2.get(i).z-pg[1].height);
    pg[3].endShape();
  }

  //else if(pgCelana) {
  if (celana) {
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = celana1.size()-1; i >= 0; i--)
      pg[3].vertex(celana1.get(i).x, celana1.get(i).z-pg[1].height);//,celana1.get(i).x1, celana1.get(i).y1
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = celana2.size()-1; i >= 0; i--)
      pg[3].vertex(celana2.get(i).x, celana2.get(i).z-pg[1].height);//,celana2.get(i).x1, celana2.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = celana3.size()-1; i >= 0; i--)
      pg[3].vertex(celana3.get(i).x, celana3.get(i).z-pg[1].height);//,celana3.get(i).x1, celana3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for (int i = garisCelana.size()-1; i >= 0; i--)
      pg[3].vertex(garisCelana.get(i).x, garisCelana.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for (int i = garisCelana2.size()-1; i >= 0; i--)
      pg[3].vertex(garisCelana2.get(i).x, garisCelana2.get(i).z-pg[1].height);
    pg[3].endShape();
  }

  //else if(pgAtasanlk) {
  if (atasanlk) {
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = atasanlk1.size()-1; i >= 0; i--)
      pg[3].vertex(atasanlk1.get(i).x, atasanlk1.get(i).z-pg[1].height);//,atasanlk1.get(i).x1, atasanlk1.get(i).y1
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = atasanlk2.size()-1; i >= 0; i--)
      pg[3].vertex(atasanlk2.get(i).x, atasanlk2.get(i).z-pg[1].height);//,atasanlk2.get(i).x1, atasanlk2.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = atasanlk3.size()-1; i >= 0; i--)
      pg[3].vertex(atasanlk3.get(i).x, atasanlk3.get(i).z-pg[1].height);//,atasanlk3.get(i).x1, atasanlk3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for (int i = garisAtasanlk.size()-1; i >= 0; i--)
      pg[3].vertex(garisAtasanlk.get(i).x, garisAtasanlk.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for (int i = garisAtasanlk2.size()-1; i >= 0; i--)
      pg[3].vertex(garisAtasanlk2.get(i).x, garisAtasanlk2.get(i).z-pg[1].height);
    pg[3].endShape();
  }

  //else if(pgCelanalk) {
  if (celanalk) {
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = celanalk1.size()-1; i >= 0; i--)
      pg[3].vertex(celanalk1.get(i).x, celanalk1.get(i).z-pg[1].height);//,celanalk1.get(i).x1, celanalk1.get(i).y1
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = celanalk2.size()-1; i >= 0; i--)
      pg[3].vertex(celanalk2.get(i).x, celanalk2.get(i).z-pg[1].height);//,celanalk2.get(i).x1, celanalk2.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if (citraKain)
      pg[3].texture(imageTexture);
    for (int i = celanalk3.size()-1; i >= 0; i--)
      pg[3].vertex(celanalk3.get(i).x, celanalk3.get(i).z-pg[1].height);//,celanalk3.get(i).x1, celanalk3.get(i).y1
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for (int i = garisCelanalk.size()-1; i >= 0; i--)
      pg[3].vertex(garisCelanalk.get(i).x, garisCelanalk.get(i).z-pg[1].height);
    pg[3].endShape();  
    for (int i = garisCelanalk2.size()-1; i >= 0; i--)
      pg[3].vertex(garisCelanalk2.get(i).x, garisCelanalk2.get(i).z-pg[1].height);
    pg[3].endShape();
  }
  pg[3].endDraw();
}

public void base1() {
  pg[2].beginDraw();
  pg[2].fill(35);
  //if(pgRok) {
  if (rok) {
    pg[2].beginShape(POLYGON);
    for (int i = polaRok1.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok1.get(i).x, polaRok1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaRok2.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok2.get(i).x, polaRok2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaRok3.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok3.get(i).x, polaRok3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaRok4.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok4.get(i).x, polaRok4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaRok5.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok5.get(i).x, polaRok5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }
  //else if(pgAtasan) {
  if (atasan) {
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasan1.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan1.get(i).x, polaAtasan1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasan2.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan2.get(i).x, polaAtasan2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasan3.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan3.get(i).x, polaAtasan3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasan4.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan4.get(i).x, polaAtasan4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasan5.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan5.get(i).x, polaAtasan5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasan6.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan6.get(i).x, polaAtasan6.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasan7.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan7.get(i).x, polaAtasan7.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasan8.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan8.get(i).x, polaAtasan8.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }
  
  //else if(pgLeher)
  if (leher) {
    pg[2].beginShape(POLYGON);
    for (int i = polaLeher1.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeher1.get(i).x, polaLeher1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaLeher2.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeher2.get(i).x, polaLeher2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaLeher3.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeher3.get(i).x, polaLeher3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaLeher4.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeher4.get(i).x, polaLeher4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaLeher5.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeher5.get(i).x, polaLeher5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }
  
  if (leherlk) {
    pg[2].beginShape(POLYGON);
    for (int i = polaLeherlk1.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeherlk1.get(i).x, polaLeherlk1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaLeherlk2.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeherlk2.get(i).x, polaLeherlk2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaLeherlk3.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeherlk3.get(i).x, polaLeherlk3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaLeherlk4.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeherlk4.get(i).x, polaLeherlk4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaLeherlk5.size()-1; i >= 0; i--)
      pg[2].vertex(polaLeherlk5.get(i).x, polaLeherlk5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }
  
  if (lengan) {
    pg[2].beginShape(POLYGON);
    for (int i = polaLengan1.size()-1; i >= 0; i--)
      pg[2].vertex(polaLengan1.get(i).x, polaLengan1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaLengan2.size()-1; i >= 0; i--)
      pg[2].vertex(polaLengan2.get(i).x, polaLengan2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaLengan3.size()-1; i >= 0; i--)
      pg[2].vertex(polaLengan3.get(i).x, polaLengan3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaLengan4.size()-1; i >= 0; i--)
      pg[2].vertex(polaLengan4.get(i).x, polaLengan4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaLengan5.size()-1; i >= 0; i--)
      pg[2].vertex(polaLengan5.get(i).x, polaLengan5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }
  
  if (lenganlk) {
    pg[2].beginShape(POLYGON);
    for (int i = polaLenganlk1.size()-1; i >= 0; i--)
      pg[2].vertex(polaLenganlk1.get(i).x, polaLenganlk1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaLenganlk2.size()-1; i >= 0; i--)
      pg[2].vertex(polaLenganlk2.get(i).x, polaLenganlk2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaLenganlk3.size()-1; i >= 0; i--)
      pg[2].vertex(polaLenganlk3.get(i).x, polaLenganlk3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaLenganlk4.size()-1; i >= 0; i--)
      pg[2].vertex(polaLenganlk4.get(i).x, polaLenganlk4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaLenganlk5.size()-1; i >= 0; i--)
      pg[2].vertex(polaLenganlk5.get(i).x, polaLenganlk5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }
  
  
  //else if (pgGaun)
  if (gaun) {
    pg[2].beginShape(POLYGON);
    for (int i = polaGaun1.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun1.get(i).x, polaGaun1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaGaun2.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun2.get(i).x, polaGaun2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaGaun3.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun3.get(i).x, polaGaun3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaGaun4.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun4.get(i).x, polaGaun4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaGaun4.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun4.get(i).x, polaGaun4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaGaun5.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun5.get(i).x, polaGaun5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaGaun6.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun6.get(i).x, polaGaun6.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaGaun7.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun7.get(i).x, polaGaun7.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
     pg[2].beginShape(POLYGON);
    for (int i = polaGaun8.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun8.get(i).x, polaGaun8.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }
  //else if (pgCelana)
  if (celana) {
    pg[2].beginShape(POLYGON);
    for (int i = polaCelana1.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana1.get(i).x, polaCelana1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaCelana2.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana2.get(i).x, polaCelana2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaCelana3.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana3.get(i).x, polaCelana3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaCelana4.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana4.get(i).x, polaCelana4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaCelana5.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana5.get(i).x, polaCelana5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaCelana6.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana6.get(i).x, polaCelana6.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaCelana7.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana7.get(i).x, polaCelana7.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaCelana8.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana8.get(i).x, polaCelana8.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }

  //else if(pgAtasanlk) {
  if (atasanlk) {
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasanlk1.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk1.get(i).x, polaAtasanlk1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasanlk2.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk2.get(i).x, polaAtasanlk2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasanlk3.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk3.get(i).x, polaAtasanlk3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasanlk4.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk4.get(i).x, polaAtasanlk4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasanlk5.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk5.get(i).x, polaAtasanlk5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasanlk6.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk6.get(i).x, polaAtasanlk6.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasanlk7.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk7.get(i).x, polaAtasanlk7.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaAtasanlk8.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk8.get(i).x, polaAtasanlk8.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }

  //else if (pgCelanalk)
  if (celanalk) {
    pg[2].beginShape(POLYGON);
    for (int i = polaCelanalk1.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk1.get(i).x, polaCelanalk1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaCelanalk2.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk2.get(i).x, polaCelanalk2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaCelanalk3.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk3.get(i).x, polaCelanalk3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaCelanalk4.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk4.get(i).x, polaCelanalk4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaCelanalk5.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk5.get(i).x, polaCelanalk5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for (int i = polaCelanalk6.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk6.get(i).x, polaCelanalk6.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaCelanalk7.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk7.get(i).x, polaCelanalk7.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for (int i = polaCelanalk8.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk8.get(i).x, polaCelanalk8.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }

  pg[2].endDraw();
}


void newProject() {
  background(255);
  newProject = true;
  for (int i = rok1.size()-1; i >= 0; i--)
    rok1.remove(rok1.get(i));
  for (int i = rok2.size()-1; i >= 0; i--)
    rok2.remove(rok2.get(i));  
  for (int i = rok3.size()-1; i >= 0; i--)
    rok3.remove(rok3.get(i));
  for (int i = garisRok.size()-1; i >= 0; i--)
    garisRok.remove(garisRok.get(i));  
  for (int i = garisRok2.size()-1; i >= 0; i--)
    garisRok2.remove(garisRok2.get(i)); 
  for (int i = polaRok1.size()-1; i >= 0; i--)
    polaRok1.remove(polaRok1.get(i)); 
  for (int i = polaRok2.size()-1; i >= 0; i--)
    polaRok2.remove(polaRok2.get(i)); 
  for (int i = polaRok3.size()-1; i >= 0; i--)
    polaRok3.remove(polaRok3.get(i)); 
  for (int i = polaRok4.size()-1; i >= 0; i--)
    polaRok4.remove(polaRok4.get(i)); 
  for (int i = polaRok5.size()-1; i >= 0; i--)
    polaRok5.remove(polaRok5.get(i));   
  //atasan
  for (int i = atasan1.size()-1; i >= 0; i--)
    atasan1.remove(atasan1.get(i)); 
  for (int i = atasan2.size()-1; i >= 0; i--)
    atasan2.remove(atasan2.get(i));  
  for (int i = atasan3.size()-1; i >= 0; i--)
    atasan3.remove(atasan3.get(i));
  for (int i = garisAtasan.size()-1; i >= 0; i--)
    garisAtasan.remove(garisAtasan.get(i));  
  for (int i = garisAtasan2.size()-1; i >= 0; i--)
    garisAtasan2.remove(garisAtasan2.get(i)); 
  for (int i = polaAtasan1.size()-1; i >= 0; i--)
    polaAtasan1.remove(polaAtasan1.get(i)); 
  for (int i = polaAtasan2.size()-1; i >= 0; i--)
    polaAtasan2.remove(polaAtasan2.get(i)); 
  for (int i = polaAtasan3.size()-1; i >= 0; i--)
    polaAtasan3.remove(polaAtasan3.get(i)); 
  for (int i = polaAtasan4.size()-1; i >= 0; i--)
    polaAtasan4.remove(polaAtasan4.get(i)); 
  for (int i = polaAtasan5.size()-1; i >= 0; i--)
    polaAtasan5.remove(polaAtasan5.get(i));   
  for (int i = polaAtasan6.size()-1; i >= 0; i--)
    polaAtasan6.remove(polaAtasan6.get(i)); 
  for (int i = polaAtasan7.size()-1; i >= 0; i--)
    polaAtasan7.remove(polaAtasan7.get(i)); 
  for (int i = polaAtasan8.size()-1; i >= 0; i--)
    polaAtasan8.remove(polaAtasan8.get(i));    
    
  //leher
  for (int i = leher1.size()-1; i >= 0; i--)
    leher1.remove(leher1.get(i)); 
  for (int i = leher2.size()-1; i >= 0; i--)
    leher2.remove(leher2.get(i));  
  for (int i = leher3.size()-1; i >= 0; i--)
    leher3.remove(leher3.get(i));
  for (int i = garisLeher.size()-1; i >= 0; i--)
    garisLeher.remove(garisLeher.get(i));  
  for (int i = garisLeher2.size()-1; i >= 0; i--)
    garisLeher2.remove(garisLeher2.get(i)); 
  for (int i = polaLeher1.size()-1; i >= 0; i--)
    polaLeher1.remove(polaLeher1.get(i)); 
  for (int i = polaLeher2.size()-1; i >= 0; i--)
    polaLeher2.remove(polaLeher2.get(i)); 
  for (int i = polaLeher3.size()-1; i >= 0; i--)
    polaLeher3.remove(polaLeher3.get(i)); 
  for (int i = polaLeher4.size()-1; i >= 0; i--)
    polaLeher4.remove(polaLeher4.get(i)); 
  for (int i = polaLeher5.size()-1; i >= 0; i--)
    polaLeher5.remove(polaLeher5.get(i)); 
  
  //lengan
  for (int i = lengan1.size()-1; i >= 0; i--)
    lengan1.remove(lengan1.get(i)); 
  for (int i = lengan2.size()-1; i >= 0; i--)
    lengan2.remove(lengan2.get(i));  
  for (int i = lengan3.size()-1; i >= 0; i--)
    lengan3.remove(lengan3.get(i));
  for (int i = lengan4.size()-1; i >= 0; i--)
    lengan4.remove(lengan4.get(i));  
  for (int i = garisLengan.size()-1; i >= 0; i--)
    garisLengan.remove(garisLengan.get(i));  
  for (int i = garisLengan2.size()-1; i >= 0; i--)
    garisLengan2.remove(garisLengan2.get(i)); 
  for (int i = polaLengan1.size()-1; i >= 0; i--)
    polaLengan1.remove(polaLengan1.get(i)); 
  for (int i = polaLengan2.size()-1; i >= 0; i--)
    polaLengan2.remove(polaLengan2.get(i)); 
  for (int i = polaLengan3.size()-1; i >= 0; i--)
    polaLengan3.remove(polaLengan3.get(i)); 
  for (int i = polaLengan4.size()-1; i >= 0; i--)
    polaLengan4.remove(polaLengan4.get(i)); 
  for (int i = polaLengan5.size()-1; i >= 0; i--)
    polaLengan5.remove(polaLengan5.get(i)); 
  
  //gaun
  for (int i = gaun1.size()-1; i >= 0; i--)
    gaun1.remove(gaun1.get(i)); 
  for (int i = gaun2.size()-1; i >= 0; i--)
    gaun2.remove(gaun2.get(i));  
  for (int i = gaun3.size()-1; i >= 0; i--)
    gaun3.remove(gaun3.get(i));
  for (int i = garisGaun.size()-1; i >= 0; i--)
    garisGaun.remove(garisGaun.get(i));  
  for (int i = garisGaun2.size()-1; i >= 0; i--)
    garisGaun2.remove(garisGaun2.get(i)); 
  for (int i = polaGaun1.size()-1; i >= 0; i--)
    polaGaun1.remove(polaGaun1.get(i)); 
  for (int i = polaGaun2.size()-1; i >= 0; i--)
    polaGaun2.remove(polaGaun2.get(i)); 
  for (int i = polaGaun3.size()-1; i >= 0; i--)
    polaGaun3.remove(polaGaun3.get(i)); 
  for (int i = polaGaun4.size()-1; i >= 0; i--)
    polaGaun4.remove(polaGaun4.get(i)); 
  for (int i = polaGaun5.size()-1; i >= 0; i--)
    polaGaun5.remove(polaGaun5.get(i)); 
  for (int i = polaGaun6.size()-1; i >= 0; i--)
    polaGaun6.remove(polaGaun6.get(i)); 
  for (int i = polaGaun7.size()-1; i >= 0; i--)
    polaGaun7.remove(polaGaun7.get(i)); 
  for (int i = polaGaun8.size()-1; i >= 0; i--)
    polaGaun8.remove(polaGaun8.get(i));   
    
  //celana
   for (int i = celana1.size()-1; i >= 0; i--)
    celana1.remove(celana1.get(i)); 
  for (int i = celana2.size()-1; i >= 0; i--)
    celana2.remove(celana2.get(i));  
  for (int i = celana3.size()-1; i >= 0; i--)
    celana3.remove(celana3.get(i));
  for (int i = garisCelana.size()-1; i >= 0; i--)
    garisCelana.remove(garisCelana.get(i));  
  for (int i = garisCelana2.size()-1; i >= 0; i--)
    garisCelana2.remove(garisCelana2.get(i)); 
  for (int i = polaCelana1.size()-1; i >= 0; i--)
    polaCelana1.remove(polaCelana1.get(i)); 
  for (int i = polaCelana2.size()-1; i >= 0; i--)
    polaCelana2.remove(polaCelana2.get(i)); 
  for (int i = polaCelana3.size()-1; i >= 0; i--)
    polaCelana3.remove(polaCelana3.get(i)); 
  for (int i = polaCelana4.size()-1; i >= 0; i--)
    polaCelana4.remove(polaCelana4.get(i)); 
  for (int i = polaCelana5.size()-1; i >= 0; i--)
    polaCelana5.remove(polaCelana5.get(i));
  for (int i = polaCelana6.size()-1; i >= 0; i--)
    polaCelana6.remove(polaCelana6.get(i)); 
  for (int i = polaCelana7.size()-1; i >= 0; i--)
    polaCelana7.remove(polaCelana7.get(i)); 
  for (int i = polaCelana8.size()-1; i >= 0; i--)
    polaCelana8.remove(polaCelana8.get(i));  
    
  //atasanlk  
  for (int i = atasanlk1.size()-1; i >= 0; i--)
    atasanlk1.remove(atasanlk1.get(i)); 
  for (int i = atasanlk2.size()-1; i >= 0; i--)
    atasanlk2.remove(atasanlk2.get(i));  
  for (int i = atasanlk3.size()-1; i >= 0; i--)
    atasanlk3.remove(atasanlk3.get(i));
  for (int i = garisAtasanlk.size()-1; i >= 0; i--)
    garisAtasanlk.remove(garisAtasanlk.get(i));  
  for (int i = garisAtasanlk2.size()-1; i >= 0; i--)
    garisAtasanlk2.remove(garisAtasanlk2.get(i)); 
  for (int i = polaAtasanlk1.size()-1; i >= 0; i--)
    polaAtasanlk1.remove(polaAtasanlk1.get(i)); 
  for (int i = polaAtasanlk2.size()-1; i >= 0; i--)
    polaAtasanlk2.remove(polaAtasanlk2.get(i)); 
  for (int i = polaAtasanlk3.size()-1; i >= 0; i--)
    polaAtasanlk3.remove(polaAtasanlk3.get(i)); 
  for (int i = polaAtasanlk4.size()-1; i >= 0; i--)
    polaAtasanlk4.remove(polaAtasanlk4.get(i)); 
  for (int i = polaAtasanlk5.size()-1; i >= 0; i--)
    polaAtasanlk5.remove(polaAtasanlk5.get(i)); 
  for (int i = polaAtasanlk6.size()-1; i >= 0; i--)
    polaAtasanlk6.remove(polaAtasanlk6.get(i)); 
  for (int i = polaAtasanlk7.size()-1; i >= 0; i--)
    polaAtasanlk7.remove(polaAtasanlk7.get(i)); 
  for (int i = polaAtasanlk8.size()-1; i >= 0; i--)
    polaAtasanlk8.remove(polaAtasanlk8.get(i));   
    
   //leherlk
  for (int i = leherlk1.size()-1; i >= 0; i--)
    leherlk1.remove(leherlk1.get(i)); 
  for (int i = leherlk2.size()-1; i >= 0; i--)
    leherlk2.remove(leherlk2.get(i));  
  for (int i = leherlk3.size()-1; i >= 0; i--)
    leherlk3.remove(leherlk3.get(i));
  for (int i = garisLeherlk.size()-1; i >= 0; i--)
    garisLeherlk.remove(garisLeherlk.get(i));  
  for (int i = garisLeherlk2.size()-1; i >= 0; i--)
    garisLeherlk2.remove(garisLeherlk2.get(i)); 
  for (int i = polaLeherlk1.size()-1; i >= 0; i--)
    polaLeherlk1.remove(polaLeherlk1.get(i)); 
  for (int i = polaLeherlk2.size()-1; i >= 0; i--)
    polaLeherlk2.remove(polaLeherlk2.get(i)); 
  for (int i = polaLeherlk3.size()-1; i >= 0; i--)
    polaLeherlk3.remove(polaLeherlk3.get(i)); 
  for (int i = polaLeherlk4.size()-1; i >= 0; i--)
    polaLeherlk4.remove(polaLeherlk4.get(i)); 
  for (int i = polaLeherlk5.size()-1; i >= 0; i--)
    polaLeherlk5.remove(polaLeherlk5.get(i)); 
  
  //lengan laki-laki
  for (int i = lenganlk1.size()-1; i >= 0; i--)
    lenganlk1.remove(lenganlk1.get(i)); 
  for (int i = lenganlk2.size()-1; i >= 0; i--)
    lenganlk2.remove(lenganlk2.get(i));  
  for (int i = lenganlk3.size()-1; i >= 0; i--)
    lenganlk3.remove(lenganlk3.get(i));
  for (int i = lenganlk4.size()-1; i >= 0; i--)
    lenganlk4.remove(lenganlk4.get(i));  
  for (int i = garisLenganlk.size()-1; i >= 0; i--)
    garisLenganlk.remove(garisLenganlk.get(i));  
  for (int i = garisLenganlk2.size()-1; i >= 0; i--)
    garisLenganlk2.remove(garisLenganlk2.get(i)); 
  for (int i = polaLenganlk1.size()-1; i >= 0; i--)
    polaLenganlk1.remove(polaLenganlk1.get(i)); 
  for (int i = polaLenganlk2.size()-1; i >= 0; i--)
    polaLenganlk2.remove(polaLenganlk2.get(i)); 
  for (int i = polaLenganlk3.size()-1; i >= 0; i--)
    polaLenganlk3.remove(polaLenganlk3.get(i)); 
  for (int i = polaLenganlk4.size()-1; i >= 0; i--)
    polaLenganlk4.remove(polaLenganlk4.get(i)); 
  for (int i = polaLenganlk5.size()-1; i >= 0; i--)
    polaLenganlk5.remove(polaLenganlk5.get(i));   
    
  //celanalk
   for (int i = celanalk1.size()-1; i >= 0; i--)
    celanalk1.remove(celanalk1.get(i)); 
  for (int i = celanalk2.size()-1; i >= 0; i--)
    celanalk2.remove(celanalk2.get(i));  
  for (int i = celanalk3.size()-1; i >= 0; i--)
    celanalk3.remove(celanalk3.get(i));
  for (int i = garisCelanalk.size()-1; i >= 0; i--)
    garisCelanalk.remove(garisCelanalk.get(i));  
  for (int i = garisCelanalk2.size()-1; i >= 0; i--)
    garisCelanalk2.remove(garisCelanalk2.get(i)); 
  for (int i = polaCelanalk1.size()-1; i >= 0; i--)
    polaCelanalk1.remove(polaCelanalk1.get(i)); 
  for (int i = polaCelanalk2.size()-1; i >= 0; i--)
    polaCelanalk2.remove(polaCelanalk2.get(i)); 
  for (int i = polaCelanalk3.size()-1; i >= 0; i--)
    polaCelana3.remove(polaCelanalk3.get(i)); 
  for (int i = polaCelanalk4.size()-1; i >= 0; i--)
    polaCelanalk4.remove(polaCelanalk4.get(i)); 
  for (int i = polaCelanalk5.size()-1; i >= 0; i--)
    polaCelanalk5.remove(polaCelanalk5.get(i));  
  for (int i = polaCelanalk6.size()-1; i >= 0; i--)
    polaCelana6.remove(polaCelanalk6.get(i)); 
  for (int i = polaCelanalk7.size()-1; i >= 0; i--)
    polaCelanalk7.remove(polaCelanalk7.get(i)); 
  for (int i = polaCelanalk8.size()-1; i >= 0; i--)
    polaCelanalk8.remove(polaCelanalk8.get(i));
}

public void selectAtasan() {
  if (templateAtasan>0) {
    if (!newProject) {
      for (int i = atasan1.size()-1; i >= 0; i--)
        atasan1.remove(atasan1.get(i));
      for (int i = atasan2.size()-1; i >= 0; i--)
        atasan2.remove(atasan2.get(i));
      for (int i = atasan3.size()-1; i >= 0; i--)
        atasan3.remove(atasan3.get(i));
      for (int i = garisAtasan.size()-1; i >= 0; i--)
        garisAtasan.remove(garisAtasan.get(i));
      for (int i = garisAtasan2.size()-1; i >= 0; i--)
        garisAtasan2.remove(garisAtasan2.get(i));
      for (int i = polaAtasan1.size()-1; i >= 0; i--)
        polaAtasan1.remove(polaAtasan1.get(i));
      for (int i = polaAtasan2.size()-1; i >= 0; i--)
        polaAtasan2.remove(polaAtasan2.get(i));
      for (int i = polaAtasan3.size()-1; i >= 0; i--)
        polaAtasan3.remove(polaAtasan3.get(i));
      for (int i = polaAtasan4.size()-1; i >= 0; i--)
        polaAtasan4.remove(polaAtasan4.get(i));
      for (int i = polaAtasan5.size()-1; i >= 0; i--)
        polaAtasan5.remove(polaAtasan5.get(i));
      for (int i = polaAtasan6.size()-1; i >= 0; i--)
        polaAtasan6.remove(polaAtasan6.get(i));
      for (int i = polaAtasan7.size()-1; i >= 0; i--)
        polaAtasan7.remove(polaAtasan7.get(i));
      for (int i = polaAtasan8.size()-1; i >= 0; i--)
        polaAtasan8.remove(polaAtasan8.get(i));  
    }

    newProject = true;
    if (templateAtasan==1) {//POLA ATASAN TANPA BUKAAN SIZE S
      atasan1.add(new Node(pg[3].width/2-25, 220));
      atasan1.add(new Node(pg[3].width/2-20, 230));
      atasan1.add(new Node(pg[3].width/2, 240));
      atasan1.add(new Node(pg[3].width/2+20, 230));
      atasan1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasan1.add(new Node(pg[3].width/2+55, 240)); //ketiak
      atasan1.add(new Node(pg[3].width/2+45, 285));
      atasan1.add(new Node(pg[3].width/2+45, 300));
      atasan1.add(new Node(pg[3].width/2+55, 320));//ketiak
      atasan1.add(new Node(pg[3].width/2+60, 420));
      atasan1.add(new Node(pg[3].width/2-60, 420));
      atasan1.add(new Node(pg[3].width/2-55, 320));
      atasan1.add(new Node(pg[3].width/2-45, 300));
      atasan1.add(new Node(pg[3].width/2-45, 285));
      atasan1.add(new Node(pg[3].width/2-55, 240));

      //(Pola Depan)
      polaAtasan1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 21   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 22.5 *2.5, 50+ 3.5  *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 25.5 *2.5, 50+ 7    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 28.5 *2.5, 50+ 7    *2.5)); //3
      polaAtasan1.add(new Node(pg[2].width/25+ 31.5 *2.5, 50+ 3.5  *2.5)); //4
      polaAtasan1.add(new Node(pg[2].width/25+ 33   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 44   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 42.5 *2.5, 50+ 14.5 *2.5)); //I
      polaAtasan1.add(new Node(pg[2].width/25+ 44.5 *2.5, 50+ 18.5 *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 47   *2.5, 50+ 20.5 *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 49.5 *2.5, 50+ 22.5 *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 49.5 *2.5, 50+ 56.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 56.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 22.5 *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 7    *2.5, 50+ 20.5 *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 18.5 *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 11.5 *2.5, 50+ 14.5 *2.5)); //I

      //(Pola Belakang)     
      polaAtasan2.add(new Node(pg[2].width/25+ 10   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 21   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 22.5 *2.5 +200, 50+ 1    *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 25.5 *2.5 +200, 50+ 2    *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 28.5 *2.5 +200, 50+ 2    *2.5)); //3
      polaAtasan2.add(new Node(pg[2].width/25+ 31.5 *2.5 +200, 50+ 1    *2.5)); //4
      polaAtasan2.add(new Node(pg[2].width/25+ 33   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 44   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 42.5 *2.5 +200, 50+ 14.5 *2.5)); //I
      polaAtasan2.add(new Node(pg[2].width/25+ 44.5 *2.5 +200, 50+ 18.5 *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 47   *2.5 +200, 50+ 20.5 *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 49.5 *2.5 +200, 50+ 22.5 *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 49.5 *2.5 +200, 50+ 56.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 56.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 22.5 *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 7    *2.5 +200, 50+ 20.5 *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 9.5  *2.5 +200, 50+ 18.5 *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 11.5 *2.5 +200, 50+ 14.5 *2.5)); //I
    }
    
    if (templateAtasan==2) {//POLA ATASAN BUKAAN DEPAN SIZE S
      atasan1.add(new Node(pg[3].width/2-25, 220));
      atasan1.add(new Node(pg[3].width/2-20, 230));
      atasan1.add(new Node(pg[3].width/2, 240));
      atasan1.add(new Node(pg[3].width/2+20, 230));
      atasan1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasan1.add(new Node(pg[3].width/2+55, 240));
      atasan1.add(new Node(pg[3].width/2+45, 285));
      atasan1.add(new Node(pg[3].width/2+45, 300));
      atasan1.add(new Node(pg[3].width/2+55, 320));
      atasan1.add(new Node(pg[3].width/2+60, 420));
      atasan1.add(new Node(pg[3].width/2-60, 420));
      atasan1.add(new Node(pg[3].width/2-55, 320));
      atasan1.add(new Node(pg[3].width/2-45, 300));
      atasan1.add(new Node(pg[3].width/2-45, 285));
      atasan1.add(new Node(pg[3].width/2-55, 240));
      
      garisAtasan.add(new Node(pg[3].width/2, 240));
      garisAtasan.add(new Node(pg[3].width/2, 420));

      //(Pola Depan)
      //#Kiri
      polaAtasan1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 21   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 22.5 *2.5, 50+ 3.5  *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 25.5 *2.5, 50+ 7    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 32   *2.5, 50+ 7    *2.5)); 
      polaAtasan1.add(new Node(pg[2].width/25+ 32   *2.5, 50+ 56.5 *2.5)); //B
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 56.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 22.5 *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 7    *2.5, 50+ 20.5 *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 18.5 *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 11.5 *2.5, 50+ 14.5 *2.5)); //I

      //#Kanan
      polaAtasan2.add(new Node(pg[2].width/25+ 22   *2.5 +50, 50+ 7    *2.5)); 
      polaAtasan2.add(new Node(pg[2].width/25+ 28.5 *2.5 +50, 50+ 7    *2.5)); //3
      polaAtasan2.add(new Node(pg[2].width/25+ 31.5 *2.5 +50, 50+ 3.5  *2.5)); //4
      polaAtasan2.add(new Node(pg[2].width/25+ 33   *2.5 +50, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 44   *2.5 +50, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 42.5 *2.5 +50, 50+ 14.5 *2.5)); //I
      polaAtasan2.add(new Node(pg[2].width/25+ 44.5 *2.5 +50, 50+ 18.5 *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 47   *2.5 +50, 50+ 20.5 *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 49.5 *2.5 +50, 50+ 22.5 *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 49.5 *2.5 +50, 50+ 56.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 22   *2.5 +50, 50+ 56.5 *2.5)); //B
      
      //(Pola Belakang)
      polaAtasan3.add(new Node(pg[2].width/25+ 10   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan3.add(new Node(pg[2].width/25+ 21   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan3.add(new Node(pg[2].width/25+ 22.5 *2.5 +200, 50+ 1    *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 25.5 *2.5 +200, 50+ 2    *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 28.5 *2.5 +200, 50+ 2    *2.5)); //3
      polaAtasan3.add(new Node(pg[2].width/25+ 31.5 *2.5 +200, 50+ 1    *2.5)); //4
      polaAtasan3.add(new Node(pg[2].width/25+ 33   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan3.add(new Node(pg[2].width/25+ 44   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan3.add(new Node(pg[2].width/25+ 42.5 *2.5 +200, 50+ 14.5 *2.5)); //I
      polaAtasan3.add(new Node(pg[2].width/25+ 44.5 *2.5 +200, 50+ 18.5 *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 47   *2.5 +200, 50+ 20.5 *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 49.5 *2.5 +200, 50+ 22.5 *2.5)); //E
      polaAtasan3.add(new Node(pg[2].width/25+ 49.5 *2.5 +200, 50+ 56.5 *2.5)); //N
      polaAtasan3.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 56.5 *2.5)); //N
      polaAtasan3.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 22.5 *2.5)); //E
      polaAtasan3.add(new Node(pg[2].width/25+ 7    *2.5 +200, 50+ 20.5 *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 9.5  *2.5 +200, 50+ 18.5 *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 11.5 *2.5 +200, 50+ 14.5 *2.5)); //I
    }
    
    if (templateAtasan==3) { //POLA ATASAN BUKAAN BELAKANG SIZE S
      atasan1.add(new Node(pg[3].width/2-25, 220));
      atasan1.add(new Node(pg[3].width/2-20, 230));
      atasan1.add(new Node(pg[3].width/2, 240));
      atasan1.add(new Node(pg[3].width/2+20, 230));
      atasan1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasan1.add(new Node(pg[3].width/2+55, 240));
      atasan1.add(new Node(pg[3].width/2+45, 285));
      atasan1.add(new Node(pg[3].width/2+45, 300));
      atasan1.add(new Node(pg[3].width/2+55, 320));
      atasan1.add(new Node(pg[3].width/2+60, 420));
      atasan1.add(new Node(pg[3].width/2-60, 420));
      atasan1.add(new Node(pg[3].width/2-55, 320));
      atasan1.add(new Node(pg[3].width/2-45, 300));
      atasan1.add(new Node(pg[3].width/2-45, 285));
      atasan1.add(new Node(pg[3].width/2-55, 240));

      //(Pola Depan)
      polaAtasan1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 21   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 22.5 *2.5, 50+ 3.5  *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 25.5 *2.5, 50+ 7    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 28.5 *2.5, 50+ 7    *2.5)); //3
      polaAtasan1.add(new Node(pg[2].width/25+ 31.5 *2.5, 50+ 3.5  *2.5)); //4
      polaAtasan1.add(new Node(pg[2].width/25+ 33   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 44   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 42.5 *2.5, 50+ 14.5 *2.5)); //I
      polaAtasan1.add(new Node(pg[2].width/25+ 44.5 *2.5, 50+ 18.5 *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 47   *2.5, 50+ 20.5 *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 49.5 *2.5, 50+ 22.5 *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 49.5 *2.5, 50+ 56.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 56.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 22.5 *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 7    *2.5, 50+ 20.5 *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 18.5 *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 11.5 *2.5, 50+ 14.5 *2.5)); //I

      //(Pola Belakang)
      //#Kiri
      polaAtasan2.add(new Node(pg[2].width/25+ 10   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 21   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 22.5 *2.5 +200, 50+ 1    *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 25.5 *2.5 +200, 50+ 2    *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 32   *2.5 +200, 50+ 2    *2.5)); 
      polaAtasan2.add(new Node(pg[2].width/25+ 32   *2.5 +200, 50+ 56.5 *2.5)); //B
      polaAtasan2.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 56.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 22.5 *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 7    *2.5 +200, 50+ 20.5 *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 9.5  *2.5 +200, 50+ 18.5 *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 11.5 *2.5 +200, 50+ 14.5 *2.5)); //I

      //#Kanan
      polaAtasan3.add(new Node(pg[2].width/25+ 22   *2.5 +250, 50+ 2    *2.5)); 
      polaAtasan3.add(new Node(pg[2].width/25+ 28.5 *2.5 +250, 50+ 2    *2.5)); //3
      polaAtasan3.add(new Node(pg[2].width/25+ 31.5 *2.5 +250, 50+ 1    *2.5)); //4
      polaAtasan3.add(new Node(pg[2].width/25+ 33   *2.5 +250, 50+ 0    *2.5)); //F
      polaAtasan3.add(new Node(pg[2].width/25+ 44   *2.5 +250, 50+ 3.5  *2.5)); //J
      polaAtasan3.add(new Node(pg[2].width/25+ 42.5 *2.5 +250, 50+ 14.5 *2.5)); //I
      polaAtasan3.add(new Node(pg[2].width/25+ 44.5 *2.5 +250, 50+ 18.5 *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 47   *2.5 +250, 50+ 20.5 *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 49.5 *2.5 +250, 50+ 22.5 *2.5)); //E
      polaAtasan3.add(new Node(pg[2].width/25+ 49.5 *2.5 +250, 50+ 56.5 *2.5)); //N
      polaAtasan3.add(new Node(pg[2].width/25+ 22   *2.5 +250, 50+ 56.5 *2.5)); //B
    }
    
    if (templateAtasan==4) {//POLA ATASAN TANPA BUKAAN SIZE M
      atasan1.add(new Node(pg[3].width/2-25, 220));
      atasan1.add(new Node(pg[3].width/2-20, 230));
      atasan1.add(new Node(pg[3].width/2, 240));
      atasan1.add(new Node(pg[3].width/2+20, 230));
      atasan1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasan1.add(new Node(pg[3].width/2+55, 240));
      atasan1.add(new Node(pg[3].width/2+45, 285));
      atasan1.add(new Node(pg[3].width/2+45, 300));
      atasan1.add(new Node(pg[3].width/2+55, 320));
      atasan1.add(new Node(pg[3].width/2+60, 420));
      atasan1.add(new Node(pg[3].width/2-60, 420));
      atasan1.add(new Node(pg[3].width/2-55, 320));
      atasan1.add(new Node(pg[3].width/2-45, 300));
      atasan1.add(new Node(pg[3].width/2-45, 285));
      atasan1.add(new Node(pg[3].width/2-55, 240));

      //(Pola Depan)
      polaAtasan1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 22   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 23.5 *2.5, 50+ 4    *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 26.5 *2.5, 50+ 8    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 30.5 *2.5, 50+ 8    *2.5)); //3
      polaAtasan1.add(new Node(pg[2].width/25+ 33.5 *2.5, 50+ 4    *2.5)); //4
      polaAtasan1.add(new Node(pg[2].width/25+ 35   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 47   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 45   *2.5, 50+ 18   *2.5)); //I
      polaAtasan1.add(new Node(pg[2].width/25+ 47.5 *2.5, 50+ 22   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 49   *2.5, 50+ 24   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 52   *2.5, 50+ 26   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 52   *2.5, 50+ 66.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 66.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 26   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 8    *2.5, 50+ 24   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 22   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 12   *2.5, 50+ 14.5 *2.5)); //I

      //(Pola Belakang)
      polaAtasan2.add(new Node(pg[2].width/25+ 10   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 22   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 23.5 *2.5 +200, 50+ 1    *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 26.5 *2.5 +200, 50+ 2.5  *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 30.5 *2.5 +200, 50+ 2.5  *2.5)); //3
      polaAtasan2.add(new Node(pg[2].width/25+ 33.5 *2.5 +200, 50+ 1    *2.5)); //4
      polaAtasan2.add(new Node(pg[2].width/25+ 35   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 47   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 45   *2.5 +200, 50+ 18   *2.5)); //I
      polaAtasan2.add(new Node(pg[2].width/25+ 47.5 *2.5 +200, 50+ 22   *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 49   *2.5 +200, 50+ 24   *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 52   *2.5 +200, 50+ 26   *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 52   *2.5 +200, 50+ 66.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 5    *2.5 +200, 50+ 66.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 5    *2.5 +200, 50+ 26   *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 8    *2.5 +200, 50+ 24   *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 9.5  *2.5 +200, 50+ 22   *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 12   *2.5 +200, 50+ 14.5 *2.5)); //I
    }
    
    if (templateAtasan==5) {//POLA ATASAN BUKAAN DEPAN SIZE M
      atasan1.add(new Node(pg[3].width/2-25, 220));
      atasan1.add(new Node(pg[3].width/2-20, 230));
      atasan1.add(new Node(pg[3].width/2, 240));
      atasan1.add(new Node(pg[3].width/2+20, 230));
      atasan1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasan1.add(new Node(pg[3].width/2+55, 240));
      atasan1.add(new Node(pg[3].width/2+45, 285));
      atasan1.add(new Node(pg[3].width/2+45, 300));
      atasan1.add(new Node(pg[3].width/2+55, 320));
      atasan1.add(new Node(pg[3].width/2+60, 420));
      atasan1.add(new Node(pg[3].width/2-60, 420));
      atasan1.add(new Node(pg[3].width/2-55, 320));
      atasan1.add(new Node(pg[3].width/2-45, 300));
      atasan1.add(new Node(pg[3].width/2-45, 285));
      atasan1.add(new Node(pg[3].width/2-55, 240));
      
      garisAtasan.add(new Node(pg[3].width/2, 240));
      garisAtasan.add(new Node(pg[3].width/2, 420));
      
      //(Pola Depan)
      //#Kiri
      polaAtasan1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 22   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 23.5 *2.5, 50+ 4    *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 26.5 *2.5, 50+ 8    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 33.5 *2.5, 50+ 8    *2.5)); 
      polaAtasan1.add(new Node(pg[2].width/25+ 33.5 *2.5, 50+ 66.5 *2.5)); //B
      polaAtasan1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 66.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 26   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 8    *2.5, 50+ 24   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 22   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 12   *2.5, 50+ 14.5 *2.5)); //I

      //#Kanan
      polaAtasan2.add(new Node(pg[2].width/25+ 23.5 *2.5 +50, 50+ 8    *2.5)); 
      polaAtasan2.add(new Node(pg[2].width/25+ 30.5 *2.5 +50, 50+ 8    *2.5)); //3
      polaAtasan2.add(new Node(pg[2].width/25+ 33.5 *2.5 +50, 50+ 4    *2.5)); //4
      polaAtasan2.add(new Node(pg[2].width/25+ 35   *2.5 +50, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 47   *2.5 +50, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 45   *2.5 +50, 50+ 18   *2.5)); //I
      polaAtasan2.add(new Node(pg[2].width/25+ 47.5 *2.5 +50, 50+ 22   *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 49   *2.5 +50, 50+ 24   *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 52   *2.5 +50, 50+ 26   *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 52   *2.5 +50, 50+ 66.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 23.5 *2.5 +50, 50+ 66.5 *2.5)); //B
      
      //(Pola Belakang)
      polaAtasan3.add(new Node(pg[2].width/25+ 10   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan3.add(new Node(pg[2].width/25+ 22   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan3.add(new Node(pg[2].width/25+ 23.5 *2.5 +200, 50+ 1    *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 26.5 *2.5 +200, 50+ 2.5  *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 30.5 *2.5 +200, 50+ 2.5  *2.5)); //3
      polaAtasan3.add(new Node(pg[2].width/25+ 33.5 *2.5 +200, 50+ 1    *2.5)); //4
      polaAtasan3.add(new Node(pg[2].width/25+ 35   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan3.add(new Node(pg[2].width/25+ 47   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan3.add(new Node(pg[2].width/25+ 45   *2.5 +200, 50+ 18   *2.5)); //I
      polaAtasan3.add(new Node(pg[2].width/25+ 47.5 *2.5 +200, 50+ 22   *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 49   *2.5 +200, 50+ 24   *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 52   *2.5 +200, 50+ 26   *2.5)); //E
      polaAtasan3.add(new Node(pg[2].width/25+ 52   *2.5 +200, 50+ 66.5 *2.5)); //N
      polaAtasan3.add(new Node(pg[2].width/25+ 5    *2.5 +200, 50+ 66.5 *2.5)); //N
      polaAtasan3.add(new Node(pg[2].width/25+ 5    *2.5 +200, 50+ 26   *2.5)); //E
      polaAtasan3.add(new Node(pg[2].width/25+ 8    *2.5 +200, 50+ 24   *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 9.5  *2.5 +200, 50+ 22   *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 12   *2.5 +200, 50+ 14.5 *2.5)); //I
    }
    
    if (templateAtasan==6) {//POLA ATASAN BUKAAN BELAKANG SIZE M
      atasan1.add(new Node(pg[3].width/2-25, 220));
      atasan1.add(new Node(pg[3].width/2-20, 230));
      atasan1.add(new Node(pg[3].width/2, 240));
      atasan1.add(new Node(pg[3].width/2+20, 230));
      atasan1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasan1.add(new Node(pg[3].width/2+55, 240));
      atasan1.add(new Node(pg[3].width/2+45, 285));
      atasan1.add(new Node(pg[3].width/2+45, 300));
      atasan1.add(new Node(pg[3].width/2+55, 320));
      atasan1.add(new Node(pg[3].width/2+60, 420));
      atasan1.add(new Node(pg[3].width/2-60, 420));
      atasan1.add(new Node(pg[3].width/2-55, 320));
      atasan1.add(new Node(pg[3].width/2-45, 300));
      atasan1.add(new Node(pg[3].width/2-45, 285));
      atasan1.add(new Node(pg[3].width/2-55, 240));
      
      //(Pola Depan)
      polaAtasan1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 22   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 23.5 *2.5, 50+ 4    *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 26.5 *2.5, 50+ 8    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 30.5 *2.5, 50+ 8    *2.5)); //3
      polaAtasan1.add(new Node(pg[2].width/25+ 33.5 *2.5, 50+ 4    *2.5)); //4
      polaAtasan1.add(new Node(pg[2].width/25+ 35   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 47   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 45   *2.5, 50+ 18   *2.5)); //I
      polaAtasan1.add(new Node(pg[2].width/25+ 47.5 *2.5, 50+ 22   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 49   *2.5, 50+ 24   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 52   *2.5, 50+ 26   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 52   *2.5, 50+ 66.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 66.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 26   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 8    *2.5, 50+ 24   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 22   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 12   *2.5, 50+ 14.5 *2.5)); //I

      //(Pola Belakang)
      //#Kiri
      polaAtasan2.add(new Node(pg[2].width/25+ 10   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 22   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 23.5 *2.5 +200, 50+ 1    *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 26.5 *2.5 +200, 50+ 2.5  *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 33.5 *2.5 +200, 50+ 2.5  *2.5)); 
      polaAtasan2.add(new Node(pg[2].width/25+ 33.5 *2.5 +200, 50+ 66.5 *2.5)); //B
      polaAtasan2.add(new Node(pg[2].width/25+ 5    *2.5 +200, 50+ 66.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 5    *2.5 +200, 50+ 26   *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 8    *2.5 +200, 50+ 24   *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 9.5  *2.5 +200, 50+ 22   *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 12   *2.5 +200, 50+ 14.5 *2.5)); //I

      //#Kanan
      polaAtasan3.add(new Node(pg[2].width/25+ 23.5 *2.5 +250, 50+ 2.5  *2.5)); 
      polaAtasan3.add(new Node(pg[2].width/25+ 30.5 *2.5 +250, 50+ 2.5  *2.5)); //3
      polaAtasan3.add(new Node(pg[2].width/25+ 33.5 *2.5 +250, 50+ 1    *2.5)); //4
      polaAtasan3.add(new Node(pg[2].width/25+ 35   *2.5 +250, 50+ 0    *2.5)); //F
      polaAtasan3.add(new Node(pg[2].width/25+ 47   *2.5 +250, 50+ 3.5  *2.5)); //J
      polaAtasan3.add(new Node(pg[2].width/25+ 45   *2.5 +250, 50+ 18   *2.5)); //I
      polaAtasan3.add(new Node(pg[2].width/25+ 47.5 *2.5 +250, 50+ 22   *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 49   *2.5 +250, 50+ 24   *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 52   *2.5 +250, 50+ 26   *2.5)); //E
      polaAtasan3.add(new Node(pg[2].width/25+ 52   *2.5 +250, 50+ 66.5 *2.5)); //N
      polaAtasan3.add(new Node(pg[2].width/25+ 23.5 *2.5 +250, 50+ 66.5 *2.5)); //B
    }
    
    if (templateAtasan==7) {//POLA ATASAN TANPA BUKAAN SIZE L
      atasan1.add(new Node(pg[3].width/2-25, 220));
      atasan1.add(new Node(pg[3].width/2-20, 230));
      atasan1.add(new Node(pg[3].width/2, 240));
      atasan1.add(new Node(pg[3].width/2+20, 230));
      atasan1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasan1.add(new Node(pg[3].width/2+55, 240));
      atasan1.add(new Node(pg[3].width/2+45, 285));
      atasan1.add(new Node(pg[3].width/2+45, 300));
      atasan1.add(new Node(pg[3].width/2+55, 320));
      atasan1.add(new Node(pg[3].width/2+60, 420));
      atasan1.add(new Node(pg[3].width/2-60, 420));
      atasan1.add(new Node(pg[3].width/2-55, 320));
      atasan1.add(new Node(pg[3].width/2-45, 300));
      atasan1.add(new Node(pg[3].width/2-45, 285));
      atasan1.add(new Node(pg[3].width/2-55, 240));
      
      //(Pola Depan)
      polaAtasan1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 23   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 24.5 *2.5, 50+ 5    *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 27.5 *2.5, 50+ 9    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 32.5 *2.5, 50+ 9    *2.5)); //3
      polaAtasan1.add(new Node(pg[2].width/25+ 35.5 *2.5, 50+ 5    *2.5)); //4
      polaAtasan1.add(new Node(pg[2].width/25+ 37   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 50   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 47.5 *2.5, 50+ 21   *2.5)); //I
      polaAtasan1.add(new Node(pg[2].width/25+ 49.5 *2.5, 50+ 26   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 52   *2.5, 50+ 28   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 54.5 *2.5, 50+ 30   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 54.5 *2.5, 50+ 76.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 76.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 30   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 6    *2.5, 50+ 28   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 26   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 12.5 *2.5, 50+ 21   *2.5)); //I

      //(Pola Belakang)
      polaAtasan2.add(new Node(pg[2].width/25+ 10   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 23   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 24.5 *2.5 +200, 50+ 2    *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 27.5 *2.5 +200, 50+ 4    *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 32.5 *2.5 +200, 50+ 4    *2.5)); //3
      polaAtasan2.add(new Node(pg[2].width/25+ 35.5 *2.5 +200, 50+ 2    *2.5)); //4
      polaAtasan2.add(new Node(pg[2].width/25+ 37   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 50   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 47.5 *2.5 +200, 50+ 21   *2.5)); //I
      polaAtasan2.add(new Node(pg[2].width/25+ 49.5 *2.5 +200, 50+ 26   *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 52   *2.5 +200, 50+ 28   *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 54.5 *2.5 +200, 50+ 30   *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 54.5 *2.5 +200, 50+ 76.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 76.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 30   *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 6    *2.5 +200, 50+ 28   *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 9.5  *2.5 +200, 50+ 26   *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 12.5 *2.5 +200, 50+ 21   *2.5)); //I
    }
    
    if (templateAtasan==8) {//POLA ATASAN BUKAAN DEPAN SIZE L
      atasan1.add(new Node(pg[3].width/2-25, 220));
      atasan1.add(new Node(pg[3].width/2-20, 230));
      atasan1.add(new Node(pg[3].width/2, 240));
      atasan1.add(new Node(pg[3].width/2+20, 230));
      atasan1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasan1.add(new Node(pg[3].width/2+55, 240));
      atasan1.add(new Node(pg[3].width/2+45, 285));
      atasan1.add(new Node(pg[3].width/2+45, 300));
      atasan1.add(new Node(pg[3].width/2+55, 320));
      atasan1.add(new Node(pg[3].width/2+60, 420));
      atasan1.add(new Node(pg[3].width/2-60, 420));
      atasan1.add(new Node(pg[3].width/2-55, 320));
      atasan1.add(new Node(pg[3].width/2-45, 300));
      atasan1.add(new Node(pg[3].width/2-45, 285));
      atasan1.add(new Node(pg[3].width/2-55, 240));
      
      garisAtasan.add(new Node(pg[3].width/2, 240));
      garisAtasan.add(new Node(pg[3].width/2, 420));
      
      //(Pola Depan)
      //#Kiri
      polaAtasan1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 23   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 24.5 *2.5, 50+ 5    *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 27.5 *2.5, 50+ 9    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 35   *2.5, 50+ 9    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 35   *2.5, 50+ 76.5 *2.5)); //B
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 76.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 30   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 6    *2.5, 50+ 28   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 26   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 12.5 *2.5, 50+ 21   *2.5)); //I

      //#Kanan
      polaAtasan2.add(new Node(pg[2].width/25+ 25   *2.5 +50, 50+ 9    *2.5)); 
      polaAtasan2.add(new Node(pg[2].width/25+ 32.5 *2.5 +50, 50+ 9    *2.5)); //3
      polaAtasan2.add(new Node(pg[2].width/25+ 35.5 *2.5 +50, 50+ 5    *2.5)); //4
      polaAtasan2.add(new Node(pg[2].width/25+ 37   *2.5 +50, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 50   *2.5 +50, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 47.5 *2.5 +50, 50+ 21   *2.5)); //I
      polaAtasan2.add(new Node(pg[2].width/25+ 49.5 *2.5 +50, 50+ 26   *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 52   *2.5 +50, 50+ 28   *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 54.5 *2.5 +50, 50+ 30   *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 54.5 *2.5 +50, 50+ 76.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 25   *2.5 +50, 50+ 76.5 *2.5)); //B
      
      //(Pola Belakang)
      polaAtasan3.add(new Node(pg[2].width/25+ 10   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan3.add(new Node(pg[2].width/25+ 23   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan3.add(new Node(pg[2].width/25+ 24.5 *2.5 +200, 50+ 2    *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 27.5 *2.5 +200, 50+ 4    *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 32.5 *2.5 +200, 50+ 4    *2.5)); //3
      polaAtasan3.add(new Node(pg[2].width/25+ 35.5 *2.5 +200, 50+ 2    *2.5)); //4
      polaAtasan3.add(new Node(pg[2].width/25+ 37   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan3.add(new Node(pg[2].width/25+ 50   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan3.add(new Node(pg[2].width/25+ 47.5 *2.5 +200, 50+ 21   *2.5)); //I
      polaAtasan3.add(new Node(pg[2].width/25+ 49.5 *2.5 +200, 50+ 26   *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 52   *2.5 +200, 50+ 28   *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 54.5 *2.5 +200, 50+ 30   *2.5)); //E
      polaAtasan3.add(new Node(pg[2].width/25+ 54.5 *2.5 +200, 50+ 76.5 *2.5)); //N
      polaAtasan3.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 76.5 *2.5)); //N
      polaAtasan3.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 30   *2.5)); //E
      polaAtasan3.add(new Node(pg[2].width/25+ 6    *2.5 +200, 50+ 28   *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 9.5  *2.5 +200, 50+ 26   *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 12.5 *2.5 +200, 50+ 21   *2.5)); //I
    }
    
    if (templateAtasan==9) {//POLA ATASAN BUKAAN BELAKANG SIZE L
      atasan1.add(new Node(pg[3].width/2-25, 220));
      atasan1.add(new Node(pg[3].width/2-20, 230));
      atasan1.add(new Node(pg[3].width/2, 240));
      atasan1.add(new Node(pg[3].width/2+20, 230));
      atasan1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasan1.add(new Node(pg[3].width/2+55, 240));
      atasan1.add(new Node(pg[3].width/2+45, 285));
      atasan1.add(new Node(pg[3].width/2+45, 300));
      atasan1.add(new Node(pg[3].width/2+55, 320));
      atasan1.add(new Node(pg[3].width/2+60, 420));
      atasan1.add(new Node(pg[3].width/2-60, 420));
      atasan1.add(new Node(pg[3].width/2-55, 320));
      atasan1.add(new Node(pg[3].width/2-45, 300));
      atasan1.add(new Node(pg[3].width/2-45, 285));
      atasan1.add(new Node(pg[3].width/2-55, 240));
      
      //(Pola Depan)
      polaAtasan1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 23   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 24.5 *2.5, 50+ 5    *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 27.5 *2.5, 50+ 9    *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 32.5 *2.5, 50+ 9    *2.5)); //3
      polaAtasan1.add(new Node(pg[2].width/25+ 35.5 *2.5, 50+ 5    *2.5)); //4
      polaAtasan1.add(new Node(pg[2].width/25+ 37   *2.5, 50+ 0    *2.5)); //F
      polaAtasan1.add(new Node(pg[2].width/25+ 50   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasan1.add(new Node(pg[2].width/25+ 47.5 *2.5, 50+ 21   *2.5)); //I
      polaAtasan1.add(new Node(pg[2].width/25+ 49.5 *2.5, 50+ 26   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 52   *2.5, 50+ 28   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 54.5 *2.5, 50+ 30   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 54.5 *2.5, 50+ 76.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 76.5 *2.5)); //N
      polaAtasan1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 30   *2.5)); //E
      polaAtasan1.add(new Node(pg[2].width/25+ 6    *2.5, 50+ 28   *2.5)); //2
      polaAtasan1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 26   *2.5)); //1
      polaAtasan1.add(new Node(pg[2].width/25+ 12.5 *2.5, 50+ 21   *2.5)); //I

      //(Pola Belakang)
      //#Kiri
      polaAtasan2.add(new Node(pg[2].width/25+ 10   *2.5 +200, 50+ 3.5  *2.5)); //J
      polaAtasan2.add(new Node(pg[2].width/25+ 23   *2.5 +200, 50+ 0    *2.5)); //F
      polaAtasan2.add(new Node(pg[2].width/25+ 24.5 *2.5 +200, 50+ 2    *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 27.5 *2.5 +200, 50+ 4    *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 35   *2.5 +200, 50+ 4    *2.5)); 
      polaAtasan2.add(new Node(pg[2].width/25+ 35   *2.5 +200, 50+ 76.5 *2.5)); //B
      polaAtasan2.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 76.5 *2.5)); //N
      polaAtasan2.add(new Node(pg[2].width/25+ 5.5  *2.5 +200, 50+ 30   *2.5)); //E
      polaAtasan2.add(new Node(pg[2].width/25+ 6    *2.5 +200, 50+ 28   *2.5)); //2
      polaAtasan2.add(new Node(pg[2].width/25+ 9.5  *2.5 +200, 50+ 26   *2.5)); //1
      polaAtasan2.add(new Node(pg[2].width/25+ 12.5 *2.5 +200, 50+ 21   *2.5)); //I

      //#Kanan
      polaAtasan3.add(new Node(pg[2].width/25+ 25   *2.5 +250, 50+ 4    *2.5)); 
      polaAtasan3.add(new Node(pg[2].width/25+ 32.5 *2.5 +250, 50+ 4    *2.5)); //3
      polaAtasan3.add(new Node(pg[2].width/25+ 35.5 *2.5 +250, 50+ 2    *2.5)); //4
      polaAtasan3.add(new Node(pg[2].width/25+ 37   *2.5 +250, 50+ 0    *2.5)); //F
      polaAtasan3.add(new Node(pg[2].width/25+ 50   *2.5 +250, 50+ 3.5  *2.5)); //J
      polaAtasan3.add(new Node(pg[2].width/25+ 47.5 *2.5 +250, 50+ 21   *2.5)); //I
      polaAtasan3.add(new Node(pg[2].width/25+ 49.5 *2.5 +250, 50+ 26   *2.5)); //1
      polaAtasan3.add(new Node(pg[2].width/25+ 52   *2.5 +250, 50+ 28   *2.5)); //2
      polaAtasan3.add(new Node(pg[2].width/25+ 54.5 *2.5 +250, 50+ 30   *2.5)); //E
      polaAtasan3.add(new Node(pg[2].width/25+ 54.5 *2.5 +250, 50+ 76.5 *2.5)); //N
      polaAtasan3.add(new Node(pg[2].width/25+ 25   *2.5 +250, 50+ 76.5 *2.5)); //B); //B
    }
    
    newProject = false; 
    base();
    //base1();
  }
}

public void selectRok() {
  if (templateRok>0) {
    if (!newProject) {
      for (int i = rok1.size()-1; i >= 0; i--)
        rok1.remove(rok1.get(i));
      for (int i = rok2.size()-1; i >= 0; i--)
        rok2.remove(rok2.get(i));
      for (int i = rok3.size()-1; i >= 0; i--)
        rok3.remove(rok3.get(i));
      for (int i = garisRok.size()-1; i >= 0; i--)
        garisRok.remove(garisRok.get(i));
      for (int i = garisRok2.size()-1; i >= 0; i--)
        garisRok2.remove(garisRok2.get(i));  
      for (int i = polaRok1.size()-1; i >= 0; i--)
        polaRok1.remove(polaRok1.get(i));
      for (int i = polaRok2.size()-1; i >= 0; i--)
        polaRok2.remove(polaRok2.get(i));
      for (int i = polaRok3.size()-1; i >= 0; i--)
        polaRok3.remove(polaRok3.get(i));
      for (int i = polaRok4.size()-1; i >= 0; i--)
        polaRok4.remove(polaRok4.get(i));
      for (int i = polaRok5.size()-1; i >= 0; i--)
        polaRok5.remove(polaRok5.get(i));
    }

    newProject = true;
    if (templateRok==1) {//POLA ROK STANDART SIZE S
      rok1.add(new Node(pg[3].width/2-40, 360));//0,100
      rok1.add(new Node(pg[3].width/2-40, 360));//0,100
      rok1.add(new Node(pg[3].width/2+40, 360));//100,0
      rok1.add(new Node(pg[3].width/2+40, 370));//100,100
      rok1.add(new Node(pg[3].width/2-40, 370));//0,0

      rok2.add(new Node(pg[3].width/2-40, 370));
      rok2.add(new Node(pg[3].width/2+40, 370));
      rok2.add(new Node(pg[3].width/2+50, 400));
      rok2.add(new Node(pg[3].width/2+70, 600));
      rok2.add(new Node(pg[3].width/2-70, 600));
      rok2.add(new Node(pg[3].width/2-50, 400));

      garisRok.add(new Node(pg[3].width/2-20, 370));
      garisRok.add(new Node(pg[3].width/2-20, 450));
      garisRok.add(new Node(pg[3].width/2+20, 370));
      garisRok.add(new Node(pg[3].width/2+20, 450));

      //POLA DEPAN
      polaRok1.add(new Node(pg[2].width/20+5*2, 430+(float) 0*2)); //E
      polaRok1.add(new Node(pg[2].width/20+(float)14.5*2, 430+(float) 0.9*2)); //M
      polaRok1.add(new Node(pg[2].width/20+(float)16*2, 430+(float) 13*2)); //K
      polaRok1.add(new Node(pg[2].width/20+(float)17.5*2, 430+(float) 1.1*2)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)25.5*2, 430+(float) 1.5*2)); //B
      polaRok1.add(new Node(pg[2].width/20+(float)33.5*2, 430+(float) 1.1*2)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)35*2, 430+(float) 13*2)); //K
      polaRok1.add(new Node(pg[2].width/20+(float)36.5*2, 430+(float) 0.9*2)); //M
      polaRok1.add(new Node(pg[2].width/20+46*2, 430+ (float) 0*2)); //E
      polaRok1.add(new Node(pg[2].width/20+(float)48.5*2, 430+ (float) 17*2)); //F
      polaRok1.add(new Node(pg[2].width/20+(float)51.5*2, 430+ (float) 53.5 *2)); //H
      polaRok1.add(new Node(pg[2].width/20+(float)25.5*2, 430+(float) 56.5*2)); //D
      polaRok1.add(new Node(pg[2].width/20-(float)0.5*2, 430+ (float) 53.5*2)); //H
      polaRok1.add(new Node(pg[2].width/20+(float)2.5*2, 430+ (float) 17*2)); //F
  
      //POLA BAN
      polaRok2.add(new Node(pg[2].width/20+0*2+190, 430+(float) 0*2)); //A
      polaRok2.add(new Node(pg[2].width/20+10*2+190, 430+(float) 0*2)); //B
      polaRok2.add(new Node(pg[2].width/20+10*2+190, 430+(float) 66*2)); //C
      polaRok2.add(new Node(pg[2].width/20+0*2+190, 430+(float) 66*2)); //D

      //POLA BELAKANG
      polaRok3.add(new Node(pg[2].width/20+5*2+250, 430+(float) 0*2)); //E
      polaRok3.add(new Node(pg[2].width/20+(float)14.5*2+250, 430+(float) 0.9*2)); //M
      polaRok3.add(new Node(pg[2].width/20+(float)16*2+250, 430+(float) 13*2)); //K
      polaRok3.add(new Node(pg[2].width/20+(float)17.5*2+250, 430+(float) 1.1*2)); //L
      polaRok3.add(new Node(pg[2].width/20+(float)25.5*2+250, 430+(float) 1.5*2)); //B
      polaRok3.add(new Node(pg[2].width/20+(float)33.5*2+250, 430+(float) 1.1*2)); //L
      polaRok3.add(new Node(pg[2].width/20+(float)35*2+250, 430+(float) 13*2)); //K
      polaRok3.add(new Node(pg[2].width/20+(float)36.5*2+250, 430+(float) 0.9*2)); //M
      polaRok3.add(new Node(pg[2].width/20+46*2+250, 430+ (float) 0*3)); //E
      polaRok3.add(new Node(pg[2].width/20+(float)48.5*2+250, 430+ (float) 17*2)); //F
      polaRok3.add(new Node(pg[2].width/20+(float)51.5*2+250, 430+ (float) 53.5 *2)); //H
      polaRok3.add(new Node(pg[2].width/20+(float)25.5*2+250, 430+(float) 56.5*2)); //D
      polaRok3.add(new Node(pg[2].width/20-(float)0.5*2+250, 430+ (float) 53.5*2)); //H
      polaRok3.add(new Node(pg[2].width/20+(float)2.5*2+250, 430+ (float) 17*2)); //F
    }
    if (templateRok==2) { // POLA ROK PANJANG UKURAN S
     rok1.add(new Node(pg[3].width/2-40, 360));//0,100
      rok1.add(new Node(pg[3].width/2+40, 360));//100,0
      rok1.add(new Node(pg[3].width/2+40, 370));//100,100
      rok1.add(new Node(pg[3].width/2-40, 370));//0,0

      rok2.add(new Node(pg[3].width/2-40, 370));
      rok2.add(new Node(pg[3].width/2+40, 370));
      rok2.add(new Node(pg[3].width/2+50, 400));
      rok2.add(new Node(pg[3].width/2+70, 690));
      rok2.add(new Node(pg[3].width/2-70, 690));
      rok2.add(new Node(pg[3].width/2-50, 400));

      garisRok.add(new Node(pg[3].width/2-20, 370));
      garisRok.add(new Node(pg[3].width/2-20, 450));
      garisRok.add(new Node(pg[3].width/2+20, 370));
      garisRok.add(new Node(pg[3].width/2+20, 450));

      //POLA DEPAN
      polaRok1.add(new Node(pg[2].width/20+5*3, 430+(float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+(float)14.5*3, 430+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+(float)16*3, 430+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+(float)17.5*3, 430+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)25.5*3, 430+(float) 1.5*3)); //B
      polaRok1.add(new Node(pg[2].width/20+(float)33.5*3, 430+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)35*3, 430+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+(float)36.5*3, 430+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+46*3, 430+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+(float)48.5*3, 430+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+(float)51.5*3, 430+ (float) 88.5 *3)); //H
      polaRok1.add(new Node(pg[2].width/20+(float)25.5*3, 430+(float) 91.5*3)); //D
      polaRok1.add(new Node(pg[2].width/20-(float)0.5*3, 430+ (float) 88.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+(float)2.5*3, 430+ (float) 17*3)); //F

      //POLA BAN
      polaRok2.add(new Node(pg[2].width/20+0*3+190, 430+(float) 0*3)); //A
      polaRok2.add(new Node(pg[2].width/20+10*3+190, 430+(float) 0*3)); //B
      polaRok2.add(new Node(pg[2].width/20+10*3+190, 430+(float) 66*3)); //C
      polaRok2.add(new Node(pg[2].width/20+0*3+190, 430+(float) 66*3)); //D

      //POLA BELAKANG
      polaRok3.add(new Node(pg[2].width/20+5*3+250, 430+(float) 0*3)); //E
      polaRok3.add(new Node(pg[2].width/20+(float)14.5*3+250, 430+(float) 0.9*3)); //M
      polaRok3.add(new Node(pg[2].width/20+(float)16*3+250, 430+(float) 13*3)); //K
      polaRok3.add(new Node(pg[2].width/20+(float)17.5*3+250, 430+(float) 1.1*3)); //L
      polaRok3.add(new Node(pg[2].width/20+(float)25.5*3+250, 430+(float) 1.5*3)); //B
      polaRok3.add(new Node(pg[2].width/20+(float)33.5*3+250, 430+(float) 1.1*3)); //L
      polaRok3.add(new Node(pg[2].width/20+(float)35*3+250, 430+(float) 13*3)); //K
      polaRok3.add(new Node(pg[2].width/20+(float)36.5*3+250, 430+(float) 0.9*3)); //M
      polaRok3.add(new Node(pg[2].width/20+46*3+250, 430+ (float) 0*3)); //E
      polaRok3.add(new Node(pg[2].width/20+(float)48.5*3+250, 430+ (float) 17*3)); //F
      polaRok3.add(new Node(pg[2].width/20+(float)51.5*3+250, 430+ (float) 88.5 *3)); //H
      polaRok3.add(new Node(pg[2].width/20+(float)25.5*3+250, 430+(float) 91.5*3)); //D
      polaRok3.add(new Node(pg[2].width/20-(float)0.5*3+250, 430+ (float) 88.5*3)); //H
      polaRok3.add(new Node(pg[2].width/20+(float)2.5*3+250, 430+ (float) 17*3)); //F
    }
    if (templateRok==3) { //Pola Rok Span/Suai (Pola Ban Belum)
      rok1.add(new Node(pg[3].width/2-40, 360));//0,100
      rok1.add(new Node(pg[3].width/2+40, 360));//100,0
      rok1.add(new Node(pg[3].width/2+40, 370));//100,100
      rok1.add(new Node(pg[3].width/2-40, 370));//0,0

      rok2.add(new Node(pg[3].width/2-40, 370));
      rok2.add(new Node(pg[3].width/2+40, 370));
      rok2.add(new Node(pg[3].width/2+55, 400));
      rok2.add(new Node(pg[3].width/2+52, 600));
      rok2.add(new Node(pg[3].width/2-52, 600));
      rok2.add(new Node(pg[3].width/2-55, 400));

      garisRok.add(new Node(pg[3].width/2-20, 370));
      garisRok.add(new Node(pg[3].width/2-20, 450));
      garisRok.add(new Node(pg[3].width/2+20, 370));
      garisRok.add(new Node(pg[3].width/2+20, 450));

      polaRok1.add(new Node(pg[2].width/20+3*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+6*3, 250+(float) 0.9*3)); //M"
      polaRok1.add(new Node(pg[2].width/20+(float)7.5*3, 250+(float) 13*3)); //K"
      polaRok1.add(new Node(pg[2].width/20+9*3, 250+(float) 0.9*3)); //L"
      polaRok1.add(new Node(pg[2].width/20+12*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)13.5*3, 250+(float) 15*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+15*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 1.5*3)); //B
      polaRok1.add(new Node(pg[2].width/20+25*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)26.5*3, 250+(float) 15*3)); //K
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //L1
      polaRok1.add(new Node(pg[2].width/20+(float)32.5*3, 250+(float) 13*3)); //K1
      polaRok1.add(new Node(pg[2].width/20+33*3, 250+(float) 0.9*3)); //M1
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 60*3)); //D
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 17*3)); //F'

      polaRok2.add(new Node(pg[2].width/20+3*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+6*3+200, 250+(float) 0.9*3)); //M"
      polaRok2.add(new Node(pg[2].width/20+(float)7.5*3+200, 250+(float) 13*3)); //K"
      polaRok2.add(new Node(pg[2].width/20+9*3+200, 250+(float) 0.9*3)); //L"
      polaRok2.add(new Node(pg[2].width/20+12*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)13.5*3+200, 250+(float) 15*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+15*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 1.5*3)); //B
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 40*3)); //D
      polaRok2.add(new Node(pg[2].width/20+26*3+200, 250+(float) 40*3)); //D1
      polaRok2.add(new Node(pg[2].width/20+26*3+200, 250+(float) 60*3)); //D2
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 60*3)); //D3
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 60*3)); //H'
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 17*3)); //F'

      polaRok3.add(new Node(pg[2].width/20+20*3+250, 250+(float) 1.5*3)); //B
      polaRok3.add(new Node(pg[2].width/20+25*3+250, 250+(float) 1.1*3)); //L
      polaRok3.add(new Node(pg[2].width/20+(float)26.5*3+250, 250+(float) 15*3)); //K
      polaRok3.add(new Node(pg[2].width/20+28*3+250, 250+(float) 0.9*3)); //M
      polaRok3.add(new Node(pg[2].width/20+31*3+250, 250+(float) 0.9*3)); //L1
      polaRok3.add(new Node(pg[2].width/20+(float)32.5*3+250, 250+(float) 13*3)); //K1
      polaRok3.add(new Node(pg[2].width/20+33*3+250, 250+(float) 0.9*3)); //M1
      polaRok3.add(new Node(pg[2].width/20+37*3+250, 250+ (float) 0*3)); //E
      polaRok3.add(new Node(pg[2].width/20+40*3+250, 250+ (float) 17*3)); //F
      polaRok3.add(new Node(pg[2].width/20+40*3+250, 250+ (float) 60*3)); //H
      polaRok3.add(new Node(pg[2].width/20+20*3+250, 250+(float) 60*3)); //D3
      polaRok3.add(new Node(pg[2].width/20+14*3+250, 250+(float) 60*3)); //D2
      polaRok3.add(new Node(pg[2].width/20+14*3+250, 250+(float) 40*3)); //D1
      polaRok3.add(new Node(pg[2].width/20+20*3+250, 250+(float) 40*3)); //D

      polaRok4.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); 
      polaRok4.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); 
      polaRok4.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); 
      polaRok4.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3));
    }
    if (templateRok==4) { // Rok Span 2 kumpat
      rok1.add(new Node(pg[3].width/2-40, 360));//0,100
      rok1.add(new Node(pg[3].width/2+40, 360));//100,0
      rok1.add(new Node(pg[3].width/2+40, 370));//100,100
      rok1.add(new Node(pg[3].width/2-40, 370));//0,0

      rok2.add(new Node(pg[3].width/2-40, 370));
      rok2.add(new Node(pg[3].width/2+40, 370));
      rok2.add(new Node(pg[3].width/2+55, 400));
      rok2.add(new Node(pg[3].width/2+52, 600));
      rok2.add(new Node(pg[3].width/2-52, 600));
      rok2.add(new Node(pg[3].width/2-55, 400));

      garisRok.add(new Node(pg[3].width/2-20, 370));
      garisRok.add(new Node(pg[3].width/2-20, 450));
      garisRok.add(new Node(pg[3].width/2-30, 370));
      garisRok.add(new Node(pg[3].width/2-30, 430));
      garisRok.add(new Node(pg[3].width/2+20, 370));
      garisRok.add(new Node(pg[3].width/2+20, 450));
      garisRok.add(new Node(pg[3].width/2+30, 370));
      garisRok.add(new Node(pg[3].width/2+30, 430));

      polaRok1.add(new Node(pg[2].width/20+3*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+9*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)10.5*3, 250+(float) 13*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+12*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+16*3, 250+(float) 1.1*3)); //L"
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 0*3)); //B
      polaRok1.add(new Node(pg[2].width/20+24*3, 250+(float) 1.1*3)); //L1
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)29.5*3, 250+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+45*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 61.5*3)); //D
      polaRok1.add(new Node(pg[2].width/20-5*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 17*3)); //F'

      polaRok2.add(new Node(pg[2].width/20+3*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+9*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)10.5*3+200, 250+(float) 13*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+12*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+16*3+200, 250+(float) 1.1*3)); //L"
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 0*3)); //B
      polaRok2.add(new Node(pg[2].width/20+24*3+200, 250+(float) 1.1*3)); //L1
      polaRok2.add(new Node(pg[2].width/20+28*3+200, 250+(float) 1.1*3)); //L
      polaRok2.add(new Node(pg[2].width/20+(float)29.5*3+200, 250+(float) 13*3)); //K
      polaRok2.add(new Node(pg[2].width/20+31*3+200, 250+(float) 0.9*3)); //M
      polaRok2.add(new Node(pg[2].width/20+37*3+200, 250+ (float) 0*3)); //E
      polaRok2.add(new Node(pg[2].width/20+40*3+200, 250+ (float) 17*3)); //F
      polaRok2.add(new Node(pg[2].width/20+45*3+200, 250+ (float) 60.5*3)); //H
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 61.5*3)); //D
      polaRok2.add(new Node(pg[2].width/20-5*3+200, 250+ (float) 60.5*3)); //H'
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 17*3)); //F'

      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); //A
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); //B
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 25.5*3)); //B1
      polaRok3.add(new Node(pg[2].width/20+10*3+400, 250+(float) 30.5*3));  //C
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 35.5*3));  //B11
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); //D
      polaRok3.add(new Node(pg[2].width/20+6*3+400, 250+(float) 64.5*3)); //E
      polaRok3.add(new Node(pg[2].width/20+4*3+400, 250+(float) 60.5*3));  //F
      polaRok3.add(new Node(pg[2].width/20+2*3+400, 250+(float) 64.5*3)); //G
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3)); //H
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 35.5*3)); //A1
      polaRok3.add(new Node(pg[2].width/20-2*3+400, 250+(float) 30.5*3)); //I
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 25.5*3)); //A11
    }    
    if (templateRok==5) { // Pola Rok Lipit Hadap I (Belum Saku)
     rok1.add(new Node(pg[3].width/2-40, 360));//0,100
      rok1.add(new Node(pg[3].width/2+40, 360));//100,0
      rok1.add(new Node(pg[3].width/2+40, 370));//100,100
      rok1.add(new Node(pg[3].width/2-40, 370));//0,0

      rok2.add(new Node(pg[3].width/2-40, 370));
      rok2.add(new Node(pg[3].width/2+40, 370));
      rok2.add(new Node(pg[3].width/2+50, 400));
      rok2.add(new Node(pg[3].width/2+70, 600));
      rok2.add(new Node(pg[3].width/2+5, 600));
      rok2.add(new Node(pg[3].width/2, 590));
      rok2.add(new Node(pg[3].width/2-5, 600));
      rok2.add(new Node(pg[3].width/2-70, 600));
      rok2.add(new Node(pg[3].width/2-50, 400));

      garisRok.add(new Node(pg[3].width/2-20, 370));
      garisRok.add(new Node(pg[3].width/2-25, 390));
      garisRok.add(new Node(pg[3].width/2-10, 370));
      garisRok.add(new Node(pg[3].width/2-15, 390));
      garisRok.add(new Node(pg[3].width/2, 370));
      garisRok.add(new Node(pg[3].width/2, 590));
      garisRok.add(new Node(pg[3].width/2+20, 370));
      garisRok.add(new Node(pg[3].width/2+25, 390));
      garisRok.add(new Node(pg[3].width/2+10, 370));
      garisRok.add(new Node(pg[3].width/2+15, 390));

      polaRok1.add(new Node(pg[2].width/20+1*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+7*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)8.5*3, 250+(float) 13*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+10*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+14*3, 250+(float) 1.1*3)); //L4
      polaRok1.add(new Node(pg[2].width/20+(float)16.5*3, 250+(float) 2.5*3)); //L3
      polaRok1.add(new Node(pg[2].width/20+19*3, 250+(float) 1.1*3)); //B
      polaRok1.add(new Node(pg[2].width/20+(float)21.5*3, 250+(float) 2.5*3)); //L2
      polaRok1.add(new Node(pg[2].width/20+24*3, 250+(float) 1.1*3)); //L1
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)29.5*3, 250+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+45*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 61.5*3)); //D
      polaRok1.add(new Node(pg[2].width/20-5*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20-(float)1.5*3, 250+ (float) 17*3)); //F'

      polaRok2.add(new Node(pg[2].width/20+1*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+7*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)8.5*3+200, 250+(float) 13*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+10*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+14*3+200, 250+(float) 1.1*3)); //L4
      polaRok2.add(new Node(pg[2].width/20+(float)16.5*3+200, 250+(float) 2.5*3)); //L3
      polaRok2.add(new Node(pg[2].width/20+19*3+200, 250+(float) 1.1*3)); //B
      polaRok2.add(new Node(pg[2].width/20+(float)21.5*3+200, 250+(float) 2.5*3)); //L2
      polaRok2.add(new Node(pg[2].width/20+24*3+200, 250+(float) 1.1*3)); //L1
      polaRok2.add(new Node(pg[2].width/20+28*3+200, 250+(float) 1.1*3)); //L
      polaRok2.add(new Node(pg[2].width/20+(float)29.5*3+200, 250+(float) 13*3)); //K
      polaRok2.add(new Node(pg[2].width/20+31*3+200, 250+(float) 0.9*3)); //M
      polaRok2.add(new Node(pg[2].width/20+37*3+200, 250+ (float) 0*3)); //E
      polaRok2.add(new Node(pg[2].width/20+40*3+200, 250+ (float) 17*3)); //F
      polaRok2.add(new Node(pg[2].width/20+45*3+200, 250+ (float) 60.5*3)); //H
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 61.5*3)); //D
      polaRok2.add(new Node(pg[2].width/20-5*3+200, 250+ (float) 60.5*3)); //H'
      polaRok2.add(new Node(pg[2].width/20-(float)1.5*3+200, 250+ (float) 17*3)); //F'

      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3));
    }
    if (templateRok==6) { //Rok Lipit hadap 2
     rok1.add(new Node(pg[3].width/2-40, 360));//0,100
      rok1.add(new Node(pg[3].width/2+40, 360));//100,0
      rok1.add(new Node(pg[3].width/2+40, 370));//100,100
      rok1.add(new Node(pg[3].width/2-40, 370));//0,0

      rok2.add(new Node(pg[3].width/2-40, 370));
      rok2.add(new Node(pg[3].width/2+40, 370));
      rok2.add(new Node(pg[3].width/2+50, 400));
      rok2.add(new Node(pg[3].width/2+70, 600));
      rok2.add(new Node(pg[3].width/2+30, 600));
      rok2.add(new Node(pg[3].width/2+20, 590));
      rok2.add(new Node(pg[3].width/2+10, 600));
  
      
      rok2.add(new Node(pg[3].width/2-10, 600));
      rok2.add(new Node(pg[3].width/2-20, 590));
      rok2.add(new Node(pg[3].width/2-30, 600));
      rok2.add(new Node(pg[3].width/2-70, 600));
      rok2.add(new Node(pg[3].width/2-50, 400));

      garisRok.add(new Node(pg[3].width/2-20, 370));
      garisRok.add(new Node(pg[3].width/2-25, 390));
      garisRok.add(new Node(pg[3].width/2-10, 370));
      garisRok.add(new Node(pg[3].width/2-20, 590));
      garisRok.add(new Node(pg[3].width/2+10, 370));
      garisRok.add(new Node(pg[3].width/2+20, 590));
      garisRok.add(new Node(pg[3].width/2+20, 370));
      garisRok.add(new Node(pg[3].width/2+25, 390));

      polaRok1.add(new Node(pg[2].width/20+3*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+6*3, 250+(float) 0.9*3)); //M"
      polaRok1.add(new Node(pg[2].width/20+(float)7.5*3, 250+(float) 13*3)); //K"
      polaRok1.add(new Node(pg[2].width/20+9*3, 250+(float) 0.9*3)); //L"
      polaRok1.add(new Node(pg[2].width/20+12*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)13.5*3, 250+(float) 13*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+15*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+18*3, 250+(float) 1.5*3)); //B
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 13*3)); //B
      polaRok1.add(new Node(pg[2].width/20+22*3, 250+(float) 1.5*3)); //B
      polaRok1.add(new Node(pg[2].width/20+25*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)26.5*3, 250+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //L1
      polaRok1.add(new Node(pg[2].width/20+(float)32.5*3, 250+(float) 13*3)); //K1
      polaRok1.add(new Node(pg[2].width/20+33*3, 250+(float) 0.9*3)); //M1
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+45*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 60*3)); //D
      polaRok1.add(new Node(pg[2].width/20-5*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 17*3)); //F'

      polaRok2.add(new Node(pg[2].width/20+3*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+6*3+200, 250+(float) 0.9*3)); //M"
      polaRok2.add(new Node(pg[2].width/20+(float)7.5*3+200, 250+(float) 13*3)); //K"
      polaRok2.add(new Node(pg[2].width/20+9*3+200, 250+(float) 0.9*3)); //L"
      polaRok2.add(new Node(pg[2].width/20+12*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)13.5*3+200, 250+(float) 13*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+15*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+18*3+200, 250+(float) 1.5*3)); //B
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 13*3)); //B
      polaRok2.add(new Node(pg[2].width/20+22*3+200, 250+(float) 1.5*3)); //B
      polaRok2.add(new Node(pg[2].width/20+25*3+200, 250+(float) 1.1*3)); //L
      polaRok2.add(new Node(pg[2].width/20+(float)26.5*3+200, 250+(float) 13*3)); //K
      polaRok2.add(new Node(pg[2].width/20+28*3+200, 250+(float) 0.9*3)); //M
      polaRok2.add(new Node(pg[2].width/20+31*3+200, 250+(float) 0.9*3)); //L1
      polaRok2.add(new Node(pg[2].width/20+(float)32.5*3+200, 250+(float) 13*3)); //K1
      polaRok2.add(new Node(pg[2].width/20+33*3+200, 250+(float) 0.9*3)); //M1
      polaRok2.add(new Node(pg[2].width/20+37*3+200, 250+ (float) 0*3)); //E
      polaRok2.add(new Node(pg[2].width/20+40*3+200, 250+ (float) 17*3)); //F
      polaRok2.add(new Node(pg[2].width/20+45*3+200, 250+ (float) 60.5*3)); //H
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 60*3)); //D
      polaRok2.add(new Node(pg[2].width/20-5*3+200, 250+ (float) 60.5*3)); //H'
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 17*3)); //F'

      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3));
    }
    if(templateRok==7){ //rok lipit hadap 3
    rok1.add(new Node(pg[3].width/2-40, 360));//0,100
      rok1.add(new Node(pg[3].width/2+40, 360));//100,0
      rok1.add(new Node(pg[3].width/2+40, 370));//100,100
      rok1.add(new Node(pg[3].width/2-40, 370));//0,0

      rok2.add(new Node(pg[3].width/2-40, 370));
      rok2.add(new Node(pg[3].width/2+40, 370));
      rok2.add(new Node(pg[3].width/2+50, 400));
      rok2.add(new Node(pg[3].width/2+70, 600));
      
      rok2.add(new Node(pg[3].width/2+60, 600));
      rok2.add(new Node(pg[3].width/2+50, 590));
      rok2.add(new Node(pg[3].width/2+40, 600));
      
      rok2.add(new Node(pg[3].width/2+30, 600));
      rok2.add(new Node(pg[3].width/2+20, 590));
      rok2.add(new Node(pg[3].width/2+10, 600));
      
      rok2.add(new Node(pg[3].width/2-10, 600));
      rok2.add(new Node(pg[3].width/2-20, 590));
      rok2.add(new Node(pg[3].width/2-30, 600));
      
      rok2.add(new Node(pg[3].width/2-40, 600));
      rok2.add(new Node(pg[3].width/2-50, 590));
      rok2.add(new Node(pg[3].width/2-60, 600));
      rok2.add(new Node(pg[3].width/2-70, 600));
      rok2.add(new Node(pg[3].width/2-50, 400));

      garisRok.add(new Node(pg[3].width/2-20, 370));
      garisRok.add(new Node(pg[3].width/2-50, 590));
      garisRok.add(new Node(pg[3].width/2-10, 370));
      garisRok.add(new Node(pg[3].width/2-20, 590));
      garisRok.add(new Node(pg[3].width/2+10, 370));
      garisRok.add(new Node(pg[3].width/2+20, 590));
      garisRok.add(new Node(pg[3].width/2+20, 370));
      garisRok.add(new Node(pg[3].width/2+50, 590));
    }
    if(templateRok==8){ //standar pendek m
    }
    if(templateRok==7){// standar panjang m
    }
    if(templateRok==9){// rok span 1 m
    }
    if(templateRok==10){//rok span 2 m
    }
    if(templateRok==11){// rok lipit hadap 1 m
    }
    if(templateRok==12){// rok lipit 2 m
    }
    if(templateRok==13){//rok lipit 3 m
    }
    if(templateRok==14){ //standar pendek l
    }
    if(templateRok==14){// standar panjang l
    }
    if(templateRok==15){// rok span 1 l
    }
    if(templateRok==16){//rok span 2 l
    }
    if(templateRok==17){// rok lipit hadap 1 l
    }
    if(templateRok==18){// rok lipit 2 l
    }
    if(templateRok==19){//rok lipit 3 l
    }
    newProject = false; 
    base();
    //base1();
  }
}

public void selectCelana() {
  if (templateCelana>0) {
    if (!newProject) {
      for (int i = celana1.size()-1; i >= 0; i--)
        celana1.remove(celana1.get(i));
      for (int i = celana2.size()-1; i >= 0; i--)
        celana2.remove(celana2.get(i));
      for (int i = celana3.size()-1; i >= 0; i--)
        celana3.remove(celana3.get(i));  
      for (int i = garisCelana.size()-1; i >= 0; i--)
        garisCelana.remove(garisCelana.get(i));
      for (int i = garisCelana2.size()-1; i >= 0; i--)
        garisCelana2.remove(garisCelana2.get(i));
      for (int i = polaCelana1.size()-1; i >= 0; i--)
        polaCelana1.remove(polaCelana1.get(i));
      for (int i = polaCelana2.size()-1; i >= 0; i--)
        polaCelana2.remove(polaCelana2.get(i));
      for (int i = polaCelana3.size()-1; i >= 0; i--)
        polaCelana3.remove(polaCelana3.get(i));
      for (int i = polaCelana4.size()-1; i >= 0; i--)
        polaCelana4.remove(polaCelana4.get(i));
      for (int i = polaCelana5.size()-1; i >= 0; i--)
        polaCelana5.remove(polaCelana5.get(i));
      for (int i = polaCelana6.size()-1; i >= 0; i--)
        polaCelana6.remove(polaCelana6.get(i));
      for (int i = polaCelana7.size()-1; i >= 0; i--)
        polaCelana7.remove(polaCelana7.get(i));
      for (int i = polaCelana8.size()-1; i >= 0; i--)
        polaCelana8.remove(polaCelana8.get(i));  
    }

    newProject = true;
    if (templateCelana==1) {//POLA CELANA PENDEK S
      celana1.add(new Node(pg[3].width/2-40, 360));//0,100
      celana1.add(new Node(pg[3].width/2+40, 360));//100,0
      celana1.add(new Node(pg[3].width/2+40, 370));//100,100
      celana1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celana2.add(new Node(pg[3].width/2-40, 370));
      celana2.add(new Node(pg[3].width/2+40, 370));
      celana2.add(new Node(pg[3].width/2+50, 400));
      celana2.add(new Node(pg[3].width/2+60, 550));
      celana2.add(new Node(pg[3].width/2+5, 550));
      celana2.add(new Node(pg[3].width/2, 450));
      celana2.add(new Node(pg[3].width/2-5, 550));
      celana2.add(new Node(pg[3].width/2-60, 550));
      celana2.add(new Node(pg[3].width/2-50, 400));
      
      celana3.add(new Node(pg[3].width/2+40,370));
      celana3.add(new Node(pg[3].width/2+50,400));
      celana3.add(new Node(pg[3].width/2+40,400));
      celana3.add(new Node(pg[3].width/2+30,390));
      celana3.add(new Node(pg[3].width/2+25,370));
      celana3.add(new Node(pg[3].width/2+40,370));
      
      celana3.add(new Node(pg[3].width/2-40,370));
      celana3.add(new Node(pg[3].width/2-50,400));
      celana3.add(new Node(pg[3].width/2-40,400));
      celana3.add(new Node(pg[3].width/2-30,390));
      celana3.add(new Node(pg[3].width/2-25,370));
      celana3.add(new Node(pg[3].width/2-40,370));
      
      garisCelana.add(new Node(pg[3].width/2-4,370));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,370));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      
      //POLA DEPAN
      //kiri
      polaCelana1.add(new Node(pg[2].width/25+ 23.5 *2.5, 430+ 6    *2.5)); //K
      polaCelana1.add(new Node(pg[2].width/25+ 23.5 *2.5, 430+ 19   *2.5)); //N
      polaCelana1.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 24   *2.5)); //
      polaCelana1.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 26   *2.5)); //F
      polaCelana1.add(new Node(pg[2].width/25+ 26   *2.5, 430+ 60   *2.5)); //U
      polaCelana1.add(new Node(pg[2].width/25+ 4    *2.5, 430+ 60   *2.5)); //T
      polaCelana1.add(new Node(pg[2].width/25+ 2    *2.5, 430+ 26   *2.5)); //B
      polaCelana1.add(new Node(pg[2].width/25+ 4    *2.5, 430+ 16   *2.5)); //O
      polaCelana1.add(new Node(pg[2].width/25+ 6.5  *2.5, 430+ 5    *2.5)); //J
      polaCelana1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelana1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelana1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelana1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelana1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelana1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelana1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana2.add(new Node(pg[2].width/25+ 23.5 *2.5, 430+ 6    *2.5)); //K
      polaCelana2.add(new Node(pg[2].width/25+ 26.5 *2.5, 430+ 6    *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 26.5 *2.5, 430+ 15   *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 19   *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 23.5 *2.5, 430+ 20   *2.5)); //N

      //kanan
      polaCelana3.add(new Node(pg[2].width/25- 23.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana3.add(new Node(pg[2].width/25- 23.5 *2.5 +200, 430+ 19   *2.5)); //N
      polaCelana3.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 24   *2.5)); //
      polaCelana3.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 26   *2.5)); //F
      polaCelana3.add(new Node(pg[2].width/25- 26   *2.5 +200, 430+ 60   *2.5)); //U
      polaCelana3.add(new Node(pg[2].width/25- 4    *2.5 +200, 430+ 60   *2.5)); //T
      polaCelana3.add(new Node(pg[2].width/25- 2    *2.5 +200, 430+ 26   *2.5)); //B
      polaCelana3.add(new Node(pg[2].width/25- 4    *2.5 +200, 430+ 16   *2.5)); //O
      polaCelana3.add(new Node(pg[2].width/25- 6.5  *2.5 +200, 430+ 5    *2.5)); //J
      polaCelana3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelana3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelana3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelana3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelana3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelana3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelana3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana4.add(new Node(pg[2].width/25- 23.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana4.add(new Node(pg[2].width/25- 26.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 26.5 *2.5 +200, 430+ 15   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 19   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 23.5 *2.5 +200, 430+ 20   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelana5.add(new Node(pg[2].width/25+ 24.5 *2.5 +210, 430+ 3    *2.5)); //K
      polaCelana5.add(new Node(pg[2].width/25+ 28.5 *2.5 +210, 430+ 23   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 32.5 *2.5 +210, 430+ 26   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 35.5 *2.5 +210, 430+ 26   *2.5)); //F
      polaCelana5.add(new Node(pg[2].width/25+ 30   *2.5 +210, 430+ 60   *2.5)); //U
      polaCelana5.add(new Node(pg[2].width/25+ 4    *2.5 +210, 430+ 60   *2.5)); //T
      polaCelana5.add(new Node(pg[2].width/25+ 2    *2.5 +200, 430+ 26   *2.5)); //B
      polaCelana5.add(new Node(pg[2].width/25+ 2    *2.5 +210, 430+ 5    *2.5)); //J
      polaCelana5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelana5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelana5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelana6.add(new Node(pg[2].width/25- 24.5 *2.5 +400, 430+ 3    *2.5)); //K
      polaCelana6.add(new Node(pg[2].width/25- 28.5 *2.5 +400, 430+ 23   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 32.5 *2.5 +400, 430+ 26   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 35.5 *2.5 +400, 430+ 26   *2.5)); //F
      polaCelana6.add(new Node(pg[2].width/25- 30   *2.5 +400, 430+ 60   *2.5)); //U
      polaCelana6.add(new Node(pg[2].width/25- 4    *2.5 +400, 430+ 60   *2.5)); //T
      polaCelana6.add(new Node(pg[2].width/25- 2    *2.5 +400, 430+ 26   *2.5)); //B
      polaCelana6.add(new Node(pg[2].width/25- 2    *2.5 +400, 430+ 5    *2.5)); //J
      polaCelana6.add(new Node(pg[2].width/25- 13.5 *2.5 +400, 430+ 5    *2.5)); //1
      polaCelana6.add(new Node(pg[2].width/25- 15   *2.5 +400, 430+ 16   *2.5)); //I
      polaCelana6.add(new Node(pg[2].width/25- 16.5 *2.5 +400, 430+ 5    *2.5)); //2
    }
    
    if (templateCelana==2) {//POLA CELANA PANJANG S
      celana1.add(new Node(pg[3].width/2-40, 360));//0,100
      celana1.add(new Node(pg[3].width/2+40, 360));//100,0
      celana1.add(new Node(pg[3].width/2+40, 370));//100,100
      celana1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celana2.add(new Node(pg[3].width/2-40, 370));
      celana2.add(new Node(pg[3].width/2+40, 370));
      celana2.add(new Node(pg[3].width/2+50, 400));
      celana2.add(new Node(pg[3].width/2+60, 700));
      celana2.add(new Node(pg[3].width/2+10, 700));
      celana2.add(new Node(pg[3].width/2, 450));
      celana2.add(new Node(pg[3].width/2-10, 700));
      celana2.add(new Node(pg[3].width/2-60, 700));
      celana2.add(new Node(pg[3].width/2-50, 400));
      
      celana3.add(new Node(pg[3].width/2+40,370));
      celana3.add(new Node(pg[3].width/2+50,400));
      celana3.add(new Node(pg[3].width/2+40,400));
      celana3.add(new Node(pg[3].width/2+30,390));
      celana3.add(new Node(pg[3].width/2+25,370));
      celana3.add(new Node(pg[3].width/2+40,370));
      
      celana3.add(new Node(pg[3].width/2-40,370));
      celana3.add(new Node(pg[3].width/2-50,400));
      celana3.add(new Node(pg[3].width/2-40,400));
      celana3.add(new Node(pg[3].width/2-30,390));
      celana3.add(new Node(pg[3].width/2-25,370));
      celana3.add(new Node(pg[3].width/2-40,370));
      
      garisCelana.add(new Node(pg[3].width/2-4,370));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,370));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      
      //POLA DEPAN
      //kiri
      polaCelana1.add(new Node(pg[2].width/25+ 23.5 *2.5, 430+ 6    *2.5)); //K
      polaCelana1.add(new Node(pg[2].width/25+ 23.5 *2.5, 430+ 19   *2.5)); //N
      polaCelana1.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 24   *2.5)); //
      polaCelana1.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 26   *2.5)); //F
      polaCelana1.add(new Node(pg[2].width/25+ 26   *2.5, 430+ 60   *2.5)); //U
      polaCelana1.add(new Node(pg[2].width/25+ 24   *2.5, 430+ 95   *2.5)); //R
      polaCelana1.add(new Node(pg[2].width/25+ 6    *2.5, 430+ 95   *2.5)); //Q
      polaCelana1.add(new Node(pg[2].width/25+ 4    *2.5, 430+ 60   *2.5)); //T
      polaCelana1.add(new Node(pg[2].width/25+ 2    *2.5, 430+ 26   *2.5)); //B
      polaCelana1.add(new Node(pg[2].width/25+ 4    *2.5, 430+ 16   *2.5)); //O
      polaCelana1.add(new Node(pg[2].width/25+ 6.5  *2.5, 430+ 5    *2.5)); //J
      polaCelana1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelana1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelana1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelana1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelana1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelana1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelana1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana2.add(new Node(pg[2].width/25+ 23.5 *2.5, 430+ 6    *2.5)); //K
      polaCelana2.add(new Node(pg[2].width/25+ 26.5 *2.5, 430+ 6    *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 26.5 *2.5, 430+ 15   *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 19   *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 23.5 *2.5, 430+ 20   *2.5)); //N

      //kanan
      polaCelana3.add(new Node(pg[2].width/25- 23.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana3.add(new Node(pg[2].width/25- 23.5 *2.5 +200, 430+ 19   *2.5)); //N
      polaCelana3.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 24   *2.5)); //
      polaCelana3.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 26   *2.5)); //F
      polaCelana3.add(new Node(pg[2].width/25- 26   *2.5 +200, 430+ 60   *2.5)); //U
      polaCelana3.add(new Node(pg[2].width/25- 24   *2.5 +200, 430+ 95   *2.5)); //R
      polaCelana3.add(new Node(pg[2].width/25- 6    *2.5 +200, 430+ 95   *2.5)); //Q
      polaCelana3.add(new Node(pg[2].width/25- 4    *2.5 +200, 430+ 60   *2.5)); //T
      polaCelana3.add(new Node(pg[2].width/25- 2    *2.5 +200, 430+ 26   *2.5)); //B
      polaCelana3.add(new Node(pg[2].width/25- 4    *2.5 +200, 430+ 16   *2.5)); //O
      polaCelana3.add(new Node(pg[2].width/25- 6.5  *2.5 +200, 430+ 5    *2.5)); //J
      polaCelana3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelana3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelana3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelana3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelana3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelana3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelana3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana4.add(new Node(pg[2].width/25- 23.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana4.add(new Node(pg[2].width/25- 26.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 26.5 *2.5 +200, 430+ 15   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 19   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 23.5 *2.5 +200, 430+ 20   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelana5.add(new Node(pg[2].width/25+ 24.5 *2.5 +210, 430+ 3    *2.5)); //K
      polaCelana5.add(new Node(pg[2].width/25+ 28.5 *2.5 +210, 430+ 23   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 32.5 *2.5 +210, 430+ 26   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 35.5 *2.5 +210, 430+ 26   *2.5)); //F
      polaCelana5.add(new Node(pg[2].width/25+ 30   *2.5 +210, 430+ 60   *2.5)); //U
      polaCelana5.add(new Node(pg[2].width/25+ 24   *2.5 +210, 430+ 95   *2.5)); //R
      polaCelana5.add(new Node(pg[2].width/25+ 6    *2.5 +210, 430+ 95   *2.5)); //Q
      polaCelana5.add(new Node(pg[2].width/25+ 4    *2.5 +210, 430+ 65   *2.5)); //T
      polaCelana5.add(new Node(pg[2].width/25+ 2    *2.5 +200, 430+ 26   *2.5)); //B
      polaCelana5.add(new Node(pg[2].width/25+ 2    *2.5 +210, 430+ 5    *2.5)); //J
      polaCelana5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelana5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelana5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelana6.add(new Node(pg[2].width/25- 24.5 *2.5 +400, 430+ 3    *2.5)); //K
      polaCelana6.add(new Node(pg[2].width/25- 28.5 *2.5 +400, 430+ 23   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 32.5 *2.5 +400, 430+ 26   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 35.5 *2.5 +400, 430+ 26   *2.5)); //F
      polaCelana6.add(new Node(pg[2].width/25- 30   *2.5 +400, 430+ 60   *2.5)); //U
      polaCelana6.add(new Node(pg[2].width/25- 24   *2.5 +400, 430+ 95   *2.5)); //R
      polaCelana6.add(new Node(pg[2].width/25- 6    *2.5 +400, 430+ 95   *2.5)); //Q
      polaCelana6.add(new Node(pg[2].width/25- 4    *2.5 +400, 430+ 65   *2.5)); //T
      polaCelana6.add(new Node(pg[2].width/25- 2    *2.5 +400, 430+ 26   *2.5)); //B
      polaCelana6.add(new Node(pg[2].width/25- 2    *2.5 +400, 430+ 5    *2.5)); //J
      polaCelana6.add(new Node(pg[2].width/25- 13.5 *2.5 +400, 430+ 5    *2.5)); //1
      polaCelana6.add(new Node(pg[2].width/25- 15   *2.5 +400, 430+ 16   *2.5)); //I
      polaCelana6.add(new Node(pg[2].width/25- 16.5 *2.5 +400, 430+ 5    *2.5)); //2
    }
    
    if (templateCelana==3) {//POLA CELANA PENDEK M
      celana1.add(new Node(pg[3].width/2-40, 360));//0,100
      celana1.add(new Node(pg[3].width/2+40, 360));//100,0
      celana1.add(new Node(pg[3].width/2+40, 370));//100,100
      celana1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celana2.add(new Node(pg[3].width/2-40, 370));
      celana2.add(new Node(pg[3].width/2+40, 370));
      celana2.add(new Node(pg[3].width/2+50, 400));
      celana2.add(new Node(pg[3].width/2+60, 550));
      celana2.add(new Node(pg[3].width/2+5, 550));
      celana2.add(new Node(pg[3].width/2, 450));
      celana2.add(new Node(pg[3].width/2-5, 550));
      celana2.add(new Node(pg[3].width/2-60, 550));
      celana2.add(new Node(pg[3].width/2-50, 400));
      
      celana3.add(new Node(pg[3].width/2+40,370));
      celana3.add(new Node(pg[3].width/2+50,400));
      celana3.add(new Node(pg[3].width/2+40,400));
      celana3.add(new Node(pg[3].width/2+30,390));
      celana3.add(new Node(pg[3].width/2+25,370));
      celana3.add(new Node(pg[3].width/2+40,370));
      
      celana3.add(new Node(pg[3].width/2-40,370));
      celana3.add(new Node(pg[3].width/2-50,400));
      celana3.add(new Node(pg[3].width/2-40,400));
      celana3.add(new Node(pg[3].width/2-30,390));
      celana3.add(new Node(pg[3].width/2-25,370));
      celana3.add(new Node(pg[3].width/2-40,370));
      
      garisCelana.add(new Node(pg[3].width/2-4,370));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,370));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      
      //POLA DEPAN
      //kiri
      polaCelana1.add(new Node(pg[2].width/25+ 24   *2.5, 430+ 6    *2.5)); //K
      polaCelana1.add(new Node(pg[2].width/25+ 24   *2.5, 430+ 25   *2.5)); //N
      polaCelana1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 29   *2.5)); //
      polaCelana1.add(new Node(pg[2].width/25+ 29   *2.5, 430+ 32   *2.5)); //F
      polaCelana1.add(new Node(pg[2].width/25+ 27   *2.5, 430+ 70   *2.5)); //U
      polaCelana1.add(new Node(pg[2].width/25+ 3    *2.5, 430+ 70   *2.5)); //T
      polaCelana1.add(new Node(pg[2].width/25+ 1    *2.5, 430+ 32   *2.5)); //B
      polaCelana1.add(new Node(pg[2].width/25+ 2    *2.5, 430+ 25   *2.5)); //O
      polaCelana1.add(new Node(pg[2].width/25+ 6    *2.5, 430+ 5    *2.5)); //J
      polaCelana1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelana1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelana1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelana1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelana1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelana1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelana1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana2.add(new Node(pg[2].width/25+ 24   *2.5, 430+ 6    *2.5)); //K
      polaCelana2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 6    *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 17   *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 26.5 *2.5, 430+ 23   *2.5)); //

      //kanan
      polaCelana3.add(new Node(pg[2].width/25- 24   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana3.add(new Node(pg[2].width/25- 24   *2.5 +200, 430+ 25   *2.5)); //N
      polaCelana3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 29   *2.5)); //
      polaCelana3.add(new Node(pg[2].width/25- 29   *2.5 +200, 430+ 32   *2.5)); //F
      polaCelana3.add(new Node(pg[2].width/25- 27   *2.5 +200, 430+ 70   *2.5)); //U
      polaCelana3.add(new Node(pg[2].width/25- 3    *2.5 +200, 430+ 70   *2.5)); //T
      polaCelana3.add(new Node(pg[2].width/25- 1    *2.5 +200, 430+ 32   *2.5)); //B
      polaCelana3.add(new Node(pg[2].width/25- 2    *2.5 +200, 430+ 25   *2.5)); //O
      polaCelana3.add(new Node(pg[2].width/25- 6    *2.5 +200, 430+ 5    *2.5)); //J
      polaCelana3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelana3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelana3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelana3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelana3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelana3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelana3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana4.add(new Node(pg[2].width/25- 24   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 17   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 26.5 *2.5 +200, 430+ 23   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 24   *2.5 +200, 430+ 25   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelana5.add(new Node(pg[2].width/25+ 25   *2.5 +210, 430+ 3    *2.5)); //K
      polaCelana5.add(new Node(pg[2].width/25+ 28.5 *2.5 +210, 430+ 26   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 31.5 *2.5 +210, 430+ 31   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 37   *2.5 +210, 430+ 32   *2.5)); //F
      polaCelana5.add(new Node(pg[2].width/25+ 31   *2.5 +210, 430+ 70   *2.5)); //U
      polaCelana5.add(new Node(pg[2].width/25+ 3    *2.5 +210, 430+ 70   *2.5)); //T
      polaCelana5.add(new Node(pg[2].width/25+ 1    *2.5 +210, 430+ 32   *2.5)); //B
      polaCelana5.add(new Node(pg[2].width/25+ 1    *2.5 +210, 430+ 5    *2.5)); //J
      polaCelana5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelana5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelana5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelana6.add(new Node(pg[2].width/25- 25   *2.5 +430, 430+ 3    *2.5)); //K
      polaCelana6.add(new Node(pg[2].width/25- 28.5 *2.5 +430, 430+ 26   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 31.5 *2.5 +430, 430+ 31   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 37   *2.5 +430, 430+ 32   *2.5)); //F
      polaCelana6.add(new Node(pg[2].width/25- 31   *2.5 +430, 430+ 70   *2.5)); //U
      polaCelana6.add(new Node(pg[2].width/25- 3    *2.5 +430, 430+ 70   *2.5)); //T
      polaCelana6.add(new Node(pg[2].width/25- 1    *2.5 +430, 430+ 32   *2.5)); //B
      polaCelana6.add(new Node(pg[2].width/25- 1    *2.5 +430, 430+ 5    *2.5)); //J
      polaCelana6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelana6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelana6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    if (templateCelana==4) {//POLA CELANA PANJANG M
      celana1.add(new Node(pg[3].width/2-40, 360));//0,100
      celana1.add(new Node(pg[3].width/2+40, 360));//100,0
      celana1.add(new Node(pg[3].width/2+40, 370));//100,100
      celana1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celana2.add(new Node(pg[3].width/2-40, 370));
      celana2.add(new Node(pg[3].width/2+40, 370));
      celana2.add(new Node(pg[3].width/2+50, 400));
      celana2.add(new Node(pg[3].width/2+60, 700));
      celana2.add(new Node(pg[3].width/2+10, 700));
      celana2.add(new Node(pg[3].width/2, 450));
      celana2.add(new Node(pg[3].width/2-10, 700));
      celana2.add(new Node(pg[3].width/2-60, 700));
      celana2.add(new Node(pg[3].width/2-50, 400));
      
      celana3.add(new Node(pg[3].width/2+40,370));
      celana3.add(new Node(pg[3].width/2+50,400));
      celana3.add(new Node(pg[3].width/2+40,400));
      celana3.add(new Node(pg[3].width/2+30,390));
      celana3.add(new Node(pg[3].width/2+25,370));
      celana3.add(new Node(pg[3].width/2+40,370));
      
      celana3.add(new Node(pg[3].width/2-40,370));
      celana3.add(new Node(pg[3].width/2-50,400));
      celana3.add(new Node(pg[3].width/2-40,400));
      celana3.add(new Node(pg[3].width/2-30,390));
      celana3.add(new Node(pg[3].width/2-25,370));
      celana3.add(new Node(pg[3].width/2-40,370));
      
      garisCelana.add(new Node(pg[3].width/2-4,370));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,370));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      
      //POLA DEPAN
      //kiri
      polaCelana1.add(new Node(pg[2].width/25+ 24   *2.5, 430+ 6    *2.5)); //K
      polaCelana1.add(new Node(pg[2].width/25+ 24   *2.5, 430+ 25   *2.5)); //N
      polaCelana1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 29   *2.5)); //
      polaCelana1.add(new Node(pg[2].width/25+ 29   *2.5, 430+ 32   *2.5)); //F
      polaCelana1.add(new Node(pg[2].width/25+ 27   *2.5, 430+ 70   *2.5)); //U
      polaCelana1.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 101  *2.5)); //R
      polaCelana1.add(new Node(pg[2].width/25+ 5    *2.5, 430+ 101  *2.5)); //Q
      polaCelana1.add(new Node(pg[2].width/25+ 3    *2.5, 430+ 70   *2.5)); //T
      polaCelana1.add(new Node(pg[2].width/25+ 1    *2.5, 430+ 32   *2.5)); //B
      polaCelana1.add(new Node(pg[2].width/25+ 2    *2.5, 430+ 25   *2.5)); //O
      polaCelana1.add(new Node(pg[2].width/25+ 6    *2.5, 430+ 5    *2.5)); //J
      polaCelana1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelana1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelana1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelana1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelana1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelana1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelana1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana2.add(new Node(pg[2].width/25+ 24   *2.5, 430+ 6    *2.5)); //K
      polaCelana2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 6    *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 17   *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 26.5 *2.5, 430+ 23   *2.5)); //

      //kanan
      polaCelana3.add(new Node(pg[2].width/25- 24   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana3.add(new Node(pg[2].width/25- 24   *2.5 +200, 430+ 25   *2.5)); //N
      polaCelana3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 29   *2.5)); //
      polaCelana3.add(new Node(pg[2].width/25- 29   *2.5 +200, 430+ 32   *2.5)); //F
      polaCelana3.add(new Node(pg[2].width/25- 27   *2.5 +200, 430+ 70   *2.5)); //U
      polaCelana3.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 101  *2.5)); //R
      polaCelana3.add(new Node(pg[2].width/25- 5    *2.5 +200, 430+ 101  *2.5)); //Q
      polaCelana3.add(new Node(pg[2].width/25- 3    *2.5 +200, 430+ 70   *2.5)); //T
      polaCelana3.add(new Node(pg[2].width/25- 1    *2.5 +200, 430+ 32   *2.5)); //B
      polaCelana3.add(new Node(pg[2].width/25- 2    *2.5 +200, 430+ 25   *2.5)); //O
      polaCelana3.add(new Node(pg[2].width/25- 6    *2.5 +200, 430+ 5    *2.5)); //J
      polaCelana3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelana3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelana3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelana3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelana3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelana3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelana3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana4.add(new Node(pg[2].width/25- 24   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 17   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 26.5 *2.5 +200, 430+ 23   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 24   *2.5 +200, 430+ 25   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelana5.add(new Node(pg[2].width/25+ 25   *2.5 +210, 430+ 3    *2.5)); //K
      polaCelana5.add(new Node(pg[2].width/25+ 28.5 *2.5 +210, 430+ 26   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 31.5 *2.5 +210, 430+ 31   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 37   *2.5 +210, 430+ 32   *2.5)); //F
      polaCelana5.add(new Node(pg[2].width/25+ 31   *2.5 +210, 430+ 70   *2.5)); //U
      polaCelana5.add(new Node(pg[2].width/25+ 29   *2.5 +210, 430+ 101  *2.5)); //R
      polaCelana5.add(new Node(pg[2].width/25+ 5    *2.5 +210, 430+ 101  *2.5)); //Q
      polaCelana5.add(new Node(pg[2].width/25+ 3    *2.5 +210, 430+ 70   *2.5)); //T
      polaCelana5.add(new Node(pg[2].width/25+ 1    *2.5 +210, 430+ 32   *2.5)); //B
      polaCelana5.add(new Node(pg[2].width/25+ 1    *2.5 +210, 430+ 5    *2.5)); //J
      polaCelana5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelana5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelana5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelana6.add(new Node(pg[2].width/25- 25   *2.5 +430, 430+ 3    *2.5)); //K
      polaCelana6.add(new Node(pg[2].width/25- 28.5 *2.5 +430, 430+ 26   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 31.5 *2.5 +430, 430+ 31   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 37   *2.5 +430, 430+ 32   *2.5)); //F
      polaCelana6.add(new Node(pg[2].width/25- 31   *2.5 +430, 430+ 70   *2.5)); //U
      polaCelana6.add(new Node(pg[2].width/25- 29   *2.5 +430, 430+ 101  *2.5)); //R
      polaCelana6.add(new Node(pg[2].width/25- 5    *2.5 +430, 430+ 101  *2.5)); //Q
      polaCelana6.add(new Node(pg[2].width/25- 3    *2.5 +430, 430+ 70   *2.5)); //T
      polaCelana6.add(new Node(pg[2].width/25- 1    *2.5 +430, 430+ 32   *2.5)); //B
      polaCelana6.add(new Node(pg[2].width/25- 1    *2.5 +430, 430+ 5    *2.5)); //J
      polaCelana6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelana6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelana6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    if (templateCelana==5) {//POLA CELANA PENDEK L
      celana1.add(new Node(pg[3].width/2-40, 360));//0,100
      celana1.add(new Node(pg[3].width/2+40, 360));//100,0
      celana1.add(new Node(pg[3].width/2+40, 370));//100,100
      celana1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celana2.add(new Node(pg[3].width/2-40, 370));
      celana2.add(new Node(pg[3].width/2+40, 370));
      celana2.add(new Node(pg[3].width/2+50, 400));
      celana2.add(new Node(pg[3].width/2+60, 550));
      celana2.add(new Node(pg[3].width/2+5, 550));
      celana2.add(new Node(pg[3].width/2, 450));
      celana2.add(new Node(pg[3].width/2-5, 550));
      celana2.add(new Node(pg[3].width/2-60, 550));
      celana2.add(new Node(pg[3].width/2-50, 400));
      
      celana3.add(new Node(pg[3].width/2+40,370));
      celana3.add(new Node(pg[3].width/2+50,400));
      celana3.add(new Node(pg[3].width/2+40,400));
      celana3.add(new Node(pg[3].width/2+30,390));
      celana3.add(new Node(pg[3].width/2+25,370));
      celana3.add(new Node(pg[3].width/2+40,370));
      
      celana3.add(new Node(pg[3].width/2-40,370));
      celana3.add(new Node(pg[3].width/2-50,400));
      celana3.add(new Node(pg[3].width/2-40,400));
      celana3.add(new Node(pg[3].width/2-30,390));
      celana3.add(new Node(pg[3].width/2-25,370));
      celana3.add(new Node(pg[3].width/2-40,370));
      
      garisCelana.add(new Node(pg[3].width/2-4,370));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,370));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      
      //POLA DEPAN
      //kiri
      polaCelana1.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 6    *2.5)); //K
      polaCelana1.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 31   *2.5)); //N
      polaCelana1.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 37   *2.5)); //
      polaCelana1.add(new Node(pg[2].width/25+ 31   *2.5, 430+ 38   *2.5)); //F
      polaCelana1.add(new Node(pg[2].width/25+ 28   *2.5, 430+ 75   *2.5)); //U
      polaCelana1.add(new Node(pg[2].width/25+ 2    *2.5, 430+ 75   *2.5)); //T
      polaCelana1.add(new Node(pg[2].width/25+ 0    *2.5, 430+ 32   *2.5)); //B
      polaCelana1.add(new Node(pg[2].width/25+ 1    *2.5, 430+ 25   *2.5)); //O
      polaCelana1.add(new Node(pg[2].width/25+ 6    *2.5, 430+ 5    *2.5)); //J
      polaCelana1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelana1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelana1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelana1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelana1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelana1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelana1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana2.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 6    *2.5)); //K
      polaCelana2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 6    *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 23   *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 28   *2.5)); //

      //kanan
      polaCelana3.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana3.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 31   *2.5)); //N
      polaCelana3.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 37   *2.5)); //
      polaCelana3.add(new Node(pg[2].width/25- 31   *2.5 +200, 430+ 38   *2.5)); //F
      polaCelana3.add(new Node(pg[2].width/25- 28   *2.5 +200, 430+ 75   *2.5)); //U
      polaCelana3.add(new Node(pg[2].width/25- 2    *2.5 +200, 430+ 75   *2.5)); //T
      polaCelana3.add(new Node(pg[2].width/25- 0    *2.5 +200, 430+ 32   *2.5)); //B
      polaCelana3.add(new Node(pg[2].width/25- 1    *2.5 +200, 430+ 25   *2.5)); //O
      polaCelana3.add(new Node(pg[2].width/25- 6    *2.5 +200, 430+ 5    *2.5)); //J
      polaCelana3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelana3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelana3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelana3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelana3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelana3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelana3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana4.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 23   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 28   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 31   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelana5.add(new Node(pg[2].width/25+ 25.5 *2.5 +210, 430+ 3    *2.5)); //K
      polaCelana5.add(new Node(pg[2].width/25+ 28.5 *2.5 +210, 430+ 26   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 32.5 *2.5 +210, 430+ 34   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 39   *2.5 +210, 430+ 38   *2.5)); //F
      polaCelana5.add(new Node(pg[2].width/25+ 32   *2.5 +210, 430+ 75   *2.5)); //U
      polaCelana5.add(new Node(pg[2].width/25+ 2    *2.5 +210, 430+ 75   *2.5)); //T
      polaCelana5.add(new Node(pg[2].width/25+ 0    *2.5 +210, 430+ 32   *2.5)); //B
      polaCelana5.add(new Node(pg[2].width/25+ 0    *2.5 +210, 430+ 5    *2.5)); //J
      polaCelana5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelana5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelana5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelana6.add(new Node(pg[2].width/25- 25.5 *2.5 +430, 430+ 3    *2.5)); //K
      polaCelana6.add(new Node(pg[2].width/25- 28.5 *2.5 +430, 430+ 26   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 32.5 *2.5 +430, 430+ 34   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 39   *2.5 +430, 430+ 38   *2.5)); //F
      polaCelana6.add(new Node(pg[2].width/25- 32   *2.5 +430, 430+ 75   *2.5)); //U
      polaCelana6.add(new Node(pg[2].width/25- 2    *2.5 +430, 430+ 75   *2.5)); //T
      polaCelana6.add(new Node(pg[2].width/25- 0    *2.5 +430, 430+ 32   *2.5)); //B
      polaCelana6.add(new Node(pg[2].width/25- 0    *2.5 +430, 430+ 5    *2.5)); //J
      polaCelana6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelana6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelana6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    if (templateCelana==6) {//POLA CELANA PANJANG L
      celana1.add(new Node(pg[3].width/2-40, 360));//0,100
      celana1.add(new Node(pg[3].width/2+40, 360));//100,0
      celana1.add(new Node(pg[3].width/2+40, 370));//100,100
      celana1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celana2.add(new Node(pg[3].width/2-40, 370));
      celana2.add(new Node(pg[3].width/2+40, 370));
      celana2.add(new Node(pg[3].width/2+50, 400));
      celana2.add(new Node(pg[3].width/2+60, 700));
      celana2.add(new Node(pg[3].width/2+10, 700));
      celana2.add(new Node(pg[3].width/2, 450));
      celana2.add(new Node(pg[3].width/2-10, 700));
      celana2.add(new Node(pg[3].width/2-60, 700));
      celana2.add(new Node(pg[3].width/2-50, 400));
      
      celana3.add(new Node(pg[3].width/2+40,370));
      celana3.add(new Node(pg[3].width/2+50,400));
      celana3.add(new Node(pg[3].width/2+40,400));
      celana3.add(new Node(pg[3].width/2+30,390));
      celana3.add(new Node(pg[3].width/2+25,370));
      celana3.add(new Node(pg[3].width/2+40,370));
      
      celana3.add(new Node(pg[3].width/2-40,370));
      celana3.add(new Node(pg[3].width/2-50,400));
      celana3.add(new Node(pg[3].width/2-40,400));
      celana3.add(new Node(pg[3].width/2-30,390));
      celana3.add(new Node(pg[3].width/2-25,370));
      celana3.add(new Node(pg[3].width/2-40,370));
      
      garisCelana.add(new Node(pg[3].width/2-4,370));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,370));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      garisCelana.add(new Node(pg[3].width/2-4,420));
      garisCelana.add(new Node(pg[3].width/2+4,420));
      
      //POLA DEPAN
      //kiri
      polaCelana1.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 6    *2.5)); //K
      polaCelana1.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 31   *2.5)); //N
      polaCelana1.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 37   *2.5)); //
      polaCelana1.add(new Node(pg[2].width/25+ 31   *2.5, 430+ 38   *2.5)); //F
      polaCelana1.add(new Node(pg[2].width/25+ 28   *2.5, 430+ 75   *2.5)); //U
      polaCelana1.add(new Node(pg[2].width/25+ 26   *2.5, 430+ 107  *2.5)); //R
      polaCelana1.add(new Node(pg[2].width/25+ 4    *2.5, 430+ 107  *2.5)); //Q
      polaCelana1.add(new Node(pg[2].width/25+ 2    *2.5, 430+ 75   *2.5)); //T
      polaCelana1.add(new Node(pg[2].width/25+ 0    *2.5, 430+ 32   *2.5)); //B
      polaCelana1.add(new Node(pg[2].width/25+ 1    *2.5, 430+ 25   *2.5)); //O
      polaCelana1.add(new Node(pg[2].width/25+ 6    *2.5, 430+ 5    *2.5)); //J
      polaCelana1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelana1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelana1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelana1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelana1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelana1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelana1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana2.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 6    *2.5)); //K
      polaCelana2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 6    *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 23   *2.5)); //
      polaCelana2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 28   *2.5)); //

      //kanan
      polaCelana3.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana3.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 31   *2.5)); //N
      polaCelana3.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 37   *2.5)); //
      polaCelana3.add(new Node(pg[2].width/25- 31   *2.5 +200, 430+ 38   *2.5)); //F
      polaCelana3.add(new Node(pg[2].width/25- 28   *2.5 +200, 430+ 75   *2.5)); //U
      polaCelana3.add(new Node(pg[2].width/25- 26   *2.5 +200, 430+ 107  *2.5)); //R
      polaCelana3.add(new Node(pg[2].width/25- 4    *2.5 +200, 430+ 107  *2.5)); //Q
      polaCelana3.add(new Node(pg[2].width/25- 2    *2.5 +200, 430+ 75   *2.5)); //T
      polaCelana3.add(new Node(pg[2].width/25- 0    *2.5 +200, 430+ 32   *2.5)); //B
      polaCelana3.add(new Node(pg[2].width/25- 1    *2.5 +200, 430+ 25   *2.5)); //O
      polaCelana3.add(new Node(pg[2].width/25- 6    *2.5 +200, 430+ 5    *2.5)); //J
      polaCelana3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelana3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelana3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelana3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelana3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelana3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelana3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelana4.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelana4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 23   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 28   *2.5)); //
      polaCelana4.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 31   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelana5.add(new Node(pg[2].width/25+ 25.5 *2.5 +210, 430+ 3    *2.5)); //K
      polaCelana5.add(new Node(pg[2].width/25+ 28.5 *2.5 +210, 430+ 26   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 32.5 *2.5 +210, 430+ 34   *2.5)); //
      polaCelana5.add(new Node(pg[2].width/25+ 39   *2.5 +210, 430+ 38   *2.5)); //F
      polaCelana5.add(new Node(pg[2].width/25+ 32   *2.5 +210, 430+ 75   *2.5)); //U
      polaCelana5.add(new Node(pg[2].width/25+ 30   *2.5 +210, 430+ 107  *2.5)); //R
      polaCelana5.add(new Node(pg[2].width/25+ 4    *2.5 +210, 430+ 107  *2.5)); //Q
      polaCelana5.add(new Node(pg[2].width/25+ 2    *2.5 +210, 430+ 75   *2.5)); //T
      polaCelana5.add(new Node(pg[2].width/25+ 0    *2.5 +210, 430+ 32   *2.5)); //B
      polaCelana5.add(new Node(pg[2].width/25+ 0    *2.5 +210, 430+ 5    *2.5)); //J
      polaCelana5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelana5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelana5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelana6.add(new Node(pg[2].width/25- 25.5 *2.5 +430, 430+ 3    *2.5)); //K
      polaCelana6.add(new Node(pg[2].width/25- 28.5 *2.5 +430, 430+ 26   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 32.5 *2.5 +430, 430+ 34   *2.5)); //
      polaCelana6.add(new Node(pg[2].width/25- 39   *2.5 +430, 430+ 38   *2.5)); //F
      polaCelana6.add(new Node(pg[2].width/25- 32   *2.5 +430, 430+ 75   *2.5)); //U
      polaCelana6.add(new Node(pg[2].width/25- 30   *2.5 +430, 430+ 107  *2.5)); //R
      polaCelana6.add(new Node(pg[2].width/25- 4    *2.5 +430, 430+ 107  *2.5)); //Q
      polaCelana6.add(new Node(pg[2].width/25- 2    *2.5 +430, 430+ 75   *2.5)); //T
      polaCelana6.add(new Node(pg[2].width/25- 0    *2.5 +430, 430+ 32   *2.5)); //B
      polaCelana6.add(new Node(pg[2].width/25- 0    *2.5 +430, 430+ 5    *2.5)); //J
      polaCelana6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelana6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelana6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    newProject = false; 
    base();
  }

}

public void selectGaun() {
  if (templateGaun>0) {
    if (!newProject) {
      for (int i = gaun1.size()-1; i >= 0; i--)
        gaun1.remove(gaun1.get(i));
      for (int i = gaun2.size()-1; i >= 0; i--)
        gaun2.remove(gaun2.get(i));
      for (int i = gaun3.size()-1; i >= 0; i--)
        gaun3.remove(gaun3.get(i));  
      for (int i = garisGaun.size()-1; i >= 0; i--)
        garisGaun.remove(garisGaun.get(i));
      for (int i = garisGaun2.size()-1; i >= 0; i--)
        garisGaun2.remove(garisGaun2.get(i));
      for (int i = polaGaun1.size()-1; i >= 0; i--)
        polaGaun1.remove(polaGaun1.get(i));
      for (int i = polaGaun2.size()-1; i >= 0; i--)
        polaGaun2.remove(polaGaun2.get(i));
      for (int i = polaGaun3.size()-1; i >= 0; i--)
        polaGaun3.remove(polaGaun3.get(i));
      for (int i = polaGaun4.size()-1; i >= 0; i--)
        polaGaun4.remove(polaGaun4.get(i));
      for (int i = polaGaun5.size()-1; i >= 0; i--)
        polaGaun5.remove(polaGaun5.get(i));
      for (int i = polaGaun6.size()-1; i >= 0; i--)
        polaGaun6.remove(polaGaun6.get(i));
      for (int i = polaGaun7.size()-1; i >= 0; i--)
        polaGaun7.remove(polaGaun7.get(i));
      for (int i = polaGaun8.size()-1; i >= 0; i--)
        polaGaun8.remove(polaGaun8.get(i));  
    }

    newProject = true;
    if (templateGaun==1) { //s
     
    }
    if (templateGaun==2) {//m
      nodes.add(new Node(pg[2].width/2-100, pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-100, pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+100, pg[2].height/2-100));
    }
    if (templateGaun==3) {//l
      nodes.add(new Node(pg[2].width/3-30, pg[2].height*2/3));
      nodes.add(new Node(pg[2].width*2/3+30, pg[2].height*2/3));
      nodes.add(new Node(pg[2].width/2, pg[2].height/3));
    }
    newProject = false; 
    base();
  }
}

void selectAtasanlk() {
  if (templateAtasanlk>0) {
    if (!newProject) {
      for (int i = atasanlk1.size()-1; i >= 0; i--)
        atasanlk1.remove(atasanlk1.get(i));
      for (int i = atasanlk2.size()-1; i >= 0; i--)
        atasanlk2.remove(atasanlk2.get(i));
      for (int i = atasanlk3.size()-1; i >= 0; i--)
        atasanlk3.remove(atasanlk3.get(i));
      for (int i = garisAtasanlk.size()-1; i >= 0; i--)
        garisAtasanlk.remove(garisAtasanlk.get(i));
      for (int i = garisAtasanlk2.size()-1; i >= 0; i--)
        garisAtasanlk2.remove(garisAtasanlk2.get(i));
      for (int i = polaAtasanlk1.size()-1; i >= 0; i--)
        polaAtasanlk1.remove(polaAtasanlk1.get(i));
      for (int i = polaAtasanlk2.size()-1; i >= 0; i--)
        polaAtasanlk2.remove(polaAtasanlk2.get(i));
      for (int i = polaAtasanlk3.size()-1; i >= 0; i--)
        polaAtasanlk3.remove(polaAtasanlk3.get(i));
      for (int i = polaAtasanlk4.size()-1; i >= 0; i--)
        polaAtasanlk4.remove(polaAtasanlk4.get(i));
      for (int i = polaAtasanlk5.size()-1; i >= 0; i--)
        polaAtasanlk5.remove(polaAtasanlk5.get(i));
      for (int i = polaAtasanlk6.size()-1; i >= 0; i--)
        polaAtasanlk6.remove(polaAtasanlk6.get(i));
      for (int i = polaAtasanlk7.size()-1; i >= 0; i--)
        polaAtasanlk7.remove(polaAtasanlk7.get(i));
      for (int i = polaAtasanlk8.size()-1; i >= 0; i--)
        polaAtasanlk8.remove(polaAtasanlk8.get(i));
    }

    newProject = true; 
    if (templateAtasanlk==1) {//POLA ATASAN TANPA BUKAAN SIZE S
      atasanlk1.add(new Node(pg[3].width/2-25, 220));
      atasanlk1.add(new Node(pg[3].width/2-20, 230));
      atasanlk1.add(new Node(pg[3].width/2, 240));
      atasanlk1.add(new Node(pg[3].width/2+20, 230));
      atasanlk1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasanlk1.add(new Node(pg[3].width/2+55, 240));
      atasanlk1.add(new Node(pg[3].width/2+45, 285));
      atasanlk1.add(new Node(pg[3].width/2+45, 300));
      atasanlk1.add(new Node(pg[3].width/2+55, 320));
      atasanlk1.add(new Node(pg[3].width/2+60, 420));
      atasanlk1.add(new Node(pg[3].width/2-60, 420));
      atasanlk1.add(new Node(pg[3].width/2-55, 320));
      atasanlk1.add(new Node(pg[3].width/2-45, 300));
      atasanlk1.add(new Node(pg[3].width/2-45, 285));
      atasanlk1.add(new Node(pg[3].width/2-55, 240));
      
      //POLA DEPAN
      polaAtasanlk1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasanlk1.add(new Node(pg[2].width/25+ 21   *2.5, 50+ 0    *2.5)); //F
      polaAtasanlk1.add(new Node(pg[2].width/25+ 22.5 *2.5, 50+ 3.5  *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 50+ 7    *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 28.5 *2.5, 50+ 7    *2.5)); //3
      polaAtasanlk1.add(new Node(pg[2].width/25+ 31.5 *2.5, 50+ 3.5  *2.5)); //4
      polaAtasanlk1.add(new Node(pg[2].width/25+ 33   *2.5, 50+ 0    *2.5)); //F
      polaAtasanlk1.add(new Node(pg[2].width/25+ 44   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasanlk1.add(new Node(pg[2].width/25+ 42.5 *2.5, 50+ 14.5 *2.5)); //I
      polaAtasanlk1.add(new Node(pg[2].width/25+ 44.5 *2.5, 50+ 18.5 *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 47   *2.5, 50+ 20.5 *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 49.5 *2.5, 50+ 22.5 *2.5)); //E
      polaAtasanlk1.add(new Node(pg[2].width/25+ 49.5 *2.5, 50+ 71.5 *2.5)); //N
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 71.5 *2.5)); //N
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 22.5 *2.5)); //E
      polaAtasanlk1.add(new Node(pg[2].width/25+ 7    *2.5, 50+ 20.5 *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 18.5 *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 11.5 *2.5, 50+ 14.5 *2.5)); //I

      //POLA BELAKANG
      polaAtasanlk2.add(new Node(pg[2].width/25+ 10   *2.5+250, 50+ 3.5  *2.5)); //J
      polaAtasanlk2.add(new Node(pg[2].width/25+ 21   *2.5+250, 50+ 0    *2.5)); //F
      polaAtasanlk2.add(new Node(pg[2].width/25+ 22.5 *2.5+250, 50+ 1    *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 25.5 *2.5+250, 50+ 2    *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 28.5 *2.5+250, 50+ 2    *2.5)); //3
      polaAtasanlk2.add(new Node(pg[2].width/25+ 31.5 *2.5+250, 50+ 1    *2.5)); //4
      polaAtasanlk2.add(new Node(pg[2].width/25+ 33   *2.5+250, 50+ 0    *2.5)); //F
      polaAtasanlk2.add(new Node(pg[2].width/25+ 44   *2.5+250, 50+ 3.5  *2.5)); //J
      polaAtasanlk2.add(new Node(pg[2].width/25+ 42.5 *2.5+250, 50+ 14.5 *2.5)); //I
      polaAtasanlk2.add(new Node(pg[2].width/25+ 44.5 *2.5+250, 50+ 18.5 *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 47   *2.5+250, 50+ 20.5 *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 49.5 *2.5+250, 50+ 22.5 *2.5)); //E
      polaAtasanlk2.add(new Node(pg[2].width/25+ 49.5 *2.5+250, 50+ 71.5 *2.5)); //N
      polaAtasanlk2.add(new Node(pg[2].width/25+ 5.5  *2.5+250, 50+ 71.5 *2.5)); //N
      polaAtasanlk2.add(new Node(pg[2].width/25+ 5.5  *2.5+250, 50+ 22.5 *2.5)); //E
      polaAtasanlk2.add(new Node(pg[2].width/25+ 7    *2.5+250, 50+ 20.5 *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 9.5  *2.5+250, 50+ 18.5 *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 11.5 *2.5+250, 50+ 14.5 *2.5)); //I
    }
    
    if(templateAtasanlk==2){//POLA ATASAN BUKAAN DEPAN SIZE S
      atasanlk1.add(new Node(pg[3].width/2-25, 220));
      atasanlk1.add(new Node(pg[3].width/2-20, 230));
      atasanlk1.add(new Node(pg[3].width/2, 240));
      atasanlk1.add(new Node(pg[3].width/2+20, 230));
      atasanlk1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasanlk1.add(new Node(pg[3].width/2+55, 240));
      atasanlk1.add(new Node(pg[3].width/2+45, 285));
      atasanlk1.add(new Node(pg[3].width/2+45, 300));
      atasanlk1.add(new Node(pg[3].width/2+55, 320));
      atasanlk1.add(new Node(pg[3].width/2+60, 420));
      atasanlk1.add(new Node(pg[3].width/2-60, 420));
      atasanlk1.add(new Node(pg[3].width/2-55, 320));
      atasanlk1.add(new Node(pg[3].width/2-45, 300));
      atasanlk1.add(new Node(pg[3].width/2-45, 285));
      atasanlk1.add(new Node(pg[3].width/2-55, 240));
      
      garisAtasanlk.add(new Node(pg[3].width/2, 240));
      garisAtasanlk.add(new Node(pg[3].width/2, 420));
      
      //POLA DEPAN
      //#Kiri
      polaAtasanlk1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasanlk1.add(new Node(pg[2].width/25+ 21   *2.5, 50+ 0    *2.5)); //F
      polaAtasanlk1.add(new Node(pg[2].width/25+ 22.5 *2.5, 50+ 3.5  *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 50+ 7    *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 32   *2.5, 50+ 7    *2.5)); 
      polaAtasanlk1.add(new Node(pg[2].width/25+ 32   *2.5, 50+ 71.5 *2.5)); //B
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 71.5 *2.5)); //N
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 22.5 *2.5)); //E
      polaAtasanlk1.add(new Node(pg[2].width/25+ 7    *2.5, 50+ 20.5 *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 18.5 *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 11.5 *2.5, 50+ 14.5 *2.5)); //I

      //#Kanan
      polaAtasanlk2.add(new Node(pg[2].width/25+ 22   *2.5 +50, 50+ 7    *2.5)); 
      polaAtasanlk2.add(new Node(pg[2].width/25+ 28.5 *2.5 +50, 50+ 7    *2.5)); //3
      polaAtasanlk2.add(new Node(pg[2].width/25+ 31.5 *2.5 +50, 50+ 3.5  *2.5)); //4
      polaAtasanlk2.add(new Node(pg[2].width/25+ 33   *2.5 +50, 50+ 0    *2.5)); //F
      polaAtasanlk2.add(new Node(pg[2].width/25+ 44   *2.5 +50, 50+ 3.5  *2.5)); //J
      polaAtasanlk2.add(new Node(pg[2].width/25+ 42.5 *2.5 +50, 50+ 14.5 *2.5)); //I
      polaAtasanlk2.add(new Node(pg[2].width/25+ 44.5 *2.5 +50, 50+ 18.5 *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 47   *2.5 +50, 50+ 20.5 *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 49.5 *2.5 +50, 50+ 22.5 *2.5)); //E
      polaAtasanlk2.add(new Node(pg[2].width/25+ 49.5 *2.5 +50, 50+ 71.5 *2.5)); //N
      polaAtasanlk2.add(new Node(pg[2].width/25+ 22   *2.5 +50, 50+ 71.5 *2.5)); //B
      
      //POLA BELAKANG
      polaAtasanlk3.add(new Node(pg[2].width/25+ 10   *2.5+250, 50+ 3.5  *2.5)); //J
      polaAtasanlk3.add(new Node(pg[2].width/25+ 21   *2.5+250, 50+ 0    *2.5)); //F
      polaAtasanlk3.add(new Node(pg[2].width/25+ 22.5 *2.5+250, 50+ 1    *2.5)); //1
      polaAtasanlk3.add(new Node(pg[2].width/25+ 25.5 *2.5+250, 50+ 2    *2.5)); //2
      polaAtasanlk3.add(new Node(pg[2].width/25+ 28.5 *2.5+250, 50+ 2    *2.5)); //3
      polaAtasanlk3.add(new Node(pg[2].width/25+ 31.5 *2.5+250, 50+ 1    *2.5)); //4
      polaAtasanlk3.add(new Node(pg[2].width/25+ 33   *2.5+250, 50+ 0    *2.5)); //F
      polaAtasanlk3.add(new Node(pg[2].width/25+ 44   *2.5+250, 50+ 3.5  *2.5)); //J
      polaAtasanlk3.add(new Node(pg[2].width/25+ 42.5 *2.5+250, 50+ 14.5 *2.5)); //I
      polaAtasanlk3.add(new Node(pg[2].width/25+ 44.5 *2.5+250, 50+ 18.5 *2.5)); //1
      polaAtasanlk3.add(new Node(pg[2].width/25+ 47   *2.5+250, 50+ 20.5 *2.5)); //2
      polaAtasanlk3.add(new Node(pg[2].width/25+ 49.5 *2.5+250, 50+ 22.5 *2.5)); //E
      polaAtasanlk3.add(new Node(pg[2].width/25+ 49.5 *2.5+250, 50+ 71.5 *2.5)); //N
      polaAtasanlk3.add(new Node(pg[2].width/25+ 5.5  *2.5+250, 50+ 71.5 *2.5)); //N
      polaAtasanlk3.add(new Node(pg[2].width/25+ 5.5  *2.5+250, 50+ 22.5 *2.5)); //E
      polaAtasanlk3.add(new Node(pg[2].width/25+ 7    *2.5+250, 50+ 20.5 *2.5)); //2
      polaAtasanlk3.add(new Node(pg[2].width/25+ 9.5  *2.5+250, 50+ 18.5 *2.5)); //1
      polaAtasanlk3.add(new Node(pg[2].width/25+ 11.5 *2.5+250, 50+ 14.5 *2.5)); //I
    }
    
    if(templateAtasanlk==3){//POLA ATASAN TANPA BUKAAN SIZE M
      atasanlk1.add(new Node(pg[3].width/2-25, 220));
      atasanlk1.add(new Node(pg[3].width/2-20, 230));
      atasanlk1.add(new Node(pg[3].width/2, 240));
      atasanlk1.add(new Node(pg[3].width/2+20, 230));
      atasanlk1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasanlk1.add(new Node(pg[3].width/2+55, 240));
      atasanlk1.add(new Node(pg[3].width/2+45, 285));
      atasanlk1.add(new Node(pg[3].width/2+45, 300));
      atasanlk1.add(new Node(pg[3].width/2+55, 320));
      atasanlk1.add(new Node(pg[3].width/2+60, 420));
      atasanlk1.add(new Node(pg[3].width/2-60, 420));
      atasanlk1.add(new Node(pg[3].width/2-55, 320));
      atasanlk1.add(new Node(pg[3].width/2-45, 300));
      atasanlk1.add(new Node(pg[3].width/2-45, 285));
      atasanlk1.add(new Node(pg[3].width/2-55, 240));
      
      garisAtasanlk.add(new Node(pg[3].width/2, 240));
      garisAtasanlk.add(new Node(pg[3].width/2, 420));
      
      //POLA DEPAN
      polaAtasanlk1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasanlk1.add(new Node(pg[2].width/25+ 22   *2.5, 50+ 0    *2.5)); //F
      polaAtasanlk1.add(new Node(pg[2].width/25+ 23.5 *2.5, 50+ 4    *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 26.5 *2.5, 50+ 8    *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 30.5 *2.5, 50+ 8    *2.5)); //3
      polaAtasanlk1.add(new Node(pg[2].width/25+ 33.5 *2.5, 50+ 4    *2.5)); //4
      polaAtasanlk1.add(new Node(pg[2].width/25+ 35   *2.5, 50+ 0    *2.5)); //F
      polaAtasanlk1.add(new Node(pg[2].width/25+ 47   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasanlk1.add(new Node(pg[2].width/25+ 45   *2.5, 50+ 18   *2.5)); //I
      polaAtasanlk1.add(new Node(pg[2].width/25+ 47.5 *2.5, 50+ 22   *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 49   *2.5, 50+ 24   *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 52   *2.5, 50+ 26   *2.5)); //E
      polaAtasanlk1.add(new Node(pg[2].width/25+ 52   *2.5, 50+ 76.5 *2.5)); //N
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 76.5 *2.5)); //N
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 26   *2.5)); //E
      polaAtasanlk1.add(new Node(pg[2].width/25+ 8    *2.5, 50+ 24   *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 22   *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 12   *2.5, 50+ 14.5 *2.5)); //I

      //POLA BELAKANG
      polaAtasanlk2.add(new Node(pg[2].width/25+ 10   *2.5  +250, 50+ 3.5  *2.5)); //J
      polaAtasanlk2.add(new Node(pg[2].width/25+ 22   *2.5  +250, 50+ 0    *2.5)); //F
      polaAtasanlk2.add(new Node(pg[2].width/25+ 23.5 *2.5  +250, 50+ 1    *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 26.5 *2.5  +250, 50+ 2.5  *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 30.5 *2.5  +250, 50+ 2.5  *2.5)); //3
      polaAtasanlk2.add(new Node(pg[2].width/25+ 33.5 *2.5  +250, 50+ 1    *2.5)); //4
      polaAtasanlk2.add(new Node(pg[2].width/25+ 35   *2.5  +250, 50+ 0    *2.5)); //F
      polaAtasanlk2.add(new Node(pg[2].width/25+ 47   *2.5  +250, 50+ 3.5  *2.5)); //J
      polaAtasanlk2.add(new Node(pg[2].width/25+ 45   *2.5  +250, 50+ 18   *2.5)); //I
      polaAtasanlk2.add(new Node(pg[2].width/25+ 47.5 *2.5  +250, 50+ 22   *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 49   *2.5  +250, 50+ 24   *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 52   *2.5  +250, 50+ 26   *2.5)); //E
      polaAtasanlk2.add(new Node(pg[2].width/25+ 52   *2.5  +250, 50+ 76.5 *2.5)); //N
      polaAtasanlk2.add(new Node(pg[2].width/25+ 5    *2.5  +250, 50+ 76.5 *2.5)); //N
      polaAtasanlk2.add(new Node(pg[2].width/25+ 5    *2.5  +250, 50+ 26   *2.5)); //E
      polaAtasanlk2.add(new Node(pg[2].width/25+ 8    *2.5  +250, 50+ 24   *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 9.5  *2.5  +250, 50+ 22   *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 12   *2.5  +250, 50+ 14.5 *2.5)); //I
    }
    
    if(templateAtasanlk==4){//POLA ATASAN BUKAAN DEPAN SIZE M
      atasanlk1.add(new Node(pg[3].width/2-25, 220));
      atasanlk1.add(new Node(pg[3].width/2-20, 230));
      atasanlk1.add(new Node(pg[3].width/2, 240));
      atasanlk1.add(new Node(pg[3].width/2+20, 230));
      atasanlk1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasanlk1.add(new Node(pg[3].width/2+55, 240));
      atasanlk1.add(new Node(pg[3].width/2+45, 285));
      atasanlk1.add(new Node(pg[3].width/2+45, 300));
      atasanlk1.add(new Node(pg[3].width/2+55, 320));
      atasanlk1.add(new Node(pg[3].width/2+60, 420));
      atasanlk1.add(new Node(pg[3].width/2-60, 420));
      atasanlk1.add(new Node(pg[3].width/2-55, 320));
      atasanlk1.add(new Node(pg[3].width/2-45, 300));
      atasanlk1.add(new Node(pg[3].width/2-45, 285));
      atasanlk1.add(new Node(pg[3].width/2-55, 240));
      
      garisAtasanlk.add(new Node(pg[3].width/2, 240));
      garisAtasanlk.add(new Node(pg[3].width/2, 420));
      
      //POLA DEPAN
      //#Kiri
      polaAtasanlk1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5   *2.5)); //J
      polaAtasanlk1.add(new Node(pg[2].width/25+ 22   *2.5, 50+ 0     *2.5)); //F
      polaAtasanlk1.add(new Node(pg[2].width/25+ 23.5 *2.5, 50+ 4     *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 26.5 *2.5, 50+ 8     *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 33.5 *2.5, 50+ 8     *2.5)); 
      polaAtasanlk1.add(new Node(pg[2].width/25+ 33.5 *2.5, 50+ 76.5  *2.5)); //B
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 76.5  *2.5)); //N
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5    *2.5, 50+ 26    *2.5)); //E
      polaAtasanlk1.add(new Node(pg[2].width/25+ 8    *2.5, 50+ 24    *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 22    *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 12   *2.5, 50+ 14.5  *2.5)); //I

      //#Kanan
      polaAtasanlk2.add(new Node(pg[2].width/25+ 23.5 *2.5 +50, 50+ 8    *2.5)); 
      polaAtasanlk2.add(new Node(pg[2].width/25+ 30.5 *2.5 +50, 50+ 8    *2.5)); //3
      polaAtasanlk2.add(new Node(pg[2].width/25+ 33.5 *2.5 +50, 50+ 4    *2.5)); //4
      polaAtasanlk2.add(new Node(pg[2].width/25+ 35   *2.5 +50, 50+ 0    *2.5)); //F
      polaAtasanlk2.add(new Node(pg[2].width/25+ 47   *2.5 +50, 50+ 3.5  *2.5)); //J
      polaAtasanlk2.add(new Node(pg[2].width/25+ 45   *2.5 +50, 50+ 18   *2.5)); //I
      polaAtasanlk2.add(new Node(pg[2].width/25+ 47.5 *2.5 +50, 50+ 22   *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 49   *2.5 +50, 50+ 24   *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 52   *2.5 +50, 50+ 26   *2.5)); //E
      polaAtasanlk2.add(new Node(pg[2].width/25+ 52   *2.5 +50, 50+ 76.5 *2.5)); //N
      polaAtasanlk2.add(new Node(pg[2].width/25+ 23.5 *2.5 +50, 50+ 76.5 *2.5)); //B
      
      //POLA BELAKANG
      polaAtasanlk3.add(new Node(pg[2].width/25+ 10   *2.5   +250, 50+ 3.5  *2.5)); //J
      polaAtasanlk3.add(new Node(pg[2].width/25+ 22   *2.5   +250, 50+ 0    *2.5)); //F
      polaAtasanlk3.add(new Node(pg[2].width/25+ 23.5 *2.5   +250, 50+ 1    *2.5)); //1
      polaAtasanlk3.add(new Node(pg[2].width/25+ 26.5 *2.5   +250, 50+ 2.5  *2.5)); //2
      polaAtasanlk3.add(new Node(pg[2].width/25+ 30.5 *2.5   +250, 50+ 2.5  *2.5)); //3
      polaAtasanlk3.add(new Node(pg[2].width/25+ 33.5 *2.5   +250, 50+ 1    *2.5)); //4
      polaAtasanlk3.add(new Node(pg[2].width/25+ 35   *2.5   +250, 50+ 0    *2.5)); //F
      polaAtasanlk3.add(new Node(pg[2].width/25+ 47   *2.5   +250, 50+ 3.5  *2.5)); //J
      polaAtasanlk3.add(new Node(pg[2].width/25+ 45   *2.5   +250, 50+ 18   *2.5)); //I
      polaAtasanlk3.add(new Node(pg[2].width/25+ 47.5 *2.5   +250, 50+ 22   *2.5)); //1
      polaAtasanlk3.add(new Node(pg[2].width/25+ 49   *2.5   +250, 50+ 24   *2.5)); //2
      polaAtasanlk3.add(new Node(pg[2].width/25+ 52   *2.5   +250, 50+ 26   *2.5)); //E
      polaAtasanlk3.add(new Node(pg[2].width/25+ 52   *2.5   +250, 50+ 76.5 *2.5)); //N
      polaAtasanlk3.add(new Node(pg[2].width/25+ 5    *2.5   +250, 50+ 76.5 *2.5)); //N
      polaAtasanlk3.add(new Node(pg[2].width/25+ 5    *2.5   +250, 50+ 26   *2.5)); //E
      polaAtasanlk3.add(new Node(pg[2].width/25+ 8    *2.5   +250, 50+ 24   *2.5)); //2
      polaAtasanlk3.add(new Node(pg[2].width/25+ 9.5  *2.5   +250, 50+ 22   *2.5)); //1
      polaAtasanlk3.add(new Node(pg[2].width/25+ 12   *2.5   +250, 50+ 14.5 *2.5)); //I
    }
    
    if(templateAtasanlk==5){//POLA ATASAN TANPA BUKAAN SIZE L
      atasanlk1.add(new Node(pg[3].width/2-25, 220));
      atasanlk1.add(new Node(pg[3].width/2-20, 230));
      atasanlk1.add(new Node(pg[3].width/2, 240));
      atasanlk1.add(new Node(pg[3].width/2+20, 230));
      atasanlk1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasanlk1.add(new Node(pg[3].width/2+55, 240));
      atasanlk1.add(new Node(pg[3].width/2+45, 285));
      atasanlk1.add(new Node(pg[3].width/2+45, 300));
      atasanlk1.add(new Node(pg[3].width/2+55, 320));
      atasanlk1.add(new Node(pg[3].width/2+60, 420));
      atasanlk1.add(new Node(pg[3].width/2-60, 420));
      atasanlk1.add(new Node(pg[3].width/2-55, 320));
      atasanlk1.add(new Node(pg[3].width/2-45, 300));
      atasanlk1.add(new Node(pg[3].width/2-45, 285));
      atasanlk1.add(new Node(pg[3].width/2-55, 240));
      
      garisAtasanlk.add(new Node(pg[3].width/2, 240));
      garisAtasanlk.add(new Node(pg[3].width/2, 420));   
      
      //POLA DEPAN
      polaAtasanlk1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasanlk1.add(new Node(pg[2].width/25+ 23   *2.5, 50+ 0    *2.5)); //F
      polaAtasanlk1.add(new Node(pg[2].width/25+ 24.5 *2.5, 50+ 5    *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 27.5 *2.5, 50+ 9    *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 32.5 *2.5, 50+ 9    *2.5)); //3
      polaAtasanlk1.add(new Node(pg[2].width/25+ 35.5 *2.5, 50+ 5    *2.5)); //4
      polaAtasanlk1.add(new Node(pg[2].width/25+ 37   *2.5, 50+ 0    *2.5)); //F
      polaAtasanlk1.add(new Node(pg[2].width/25+ 50   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasanlk1.add(new Node(pg[2].width/25+ 47.5 *2.5, 50+ 21   *2.5)); //I
      polaAtasanlk1.add(new Node(pg[2].width/25+ 49.5 *2.5, 50+ 26   *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 52   *2.5, 50+ 28   *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 54.5 *2.5, 50+ 30   *2.5)); //E
      polaAtasanlk1.add(new Node(pg[2].width/25+ 54.5 *2.5, 50+ 81.5 *2.5)); //N
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 81.5 *2.5)); //N
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 30   *2.5)); //E
      polaAtasanlk1.add(new Node(pg[2].width/25+ 6    *2.5, 50+ 28   *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 26   *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 50+ 21   *2.5)); //I

      //POLA BELAKANG
      polaAtasanlk2.add(new Node(pg[2].width/25+ 10   *2.5   +250, 50+ 3.5  *2.5)); //J
      polaAtasanlk2.add(new Node(pg[2].width/25+ 23   *2.5   +250, 50+ 0    *2.5)); //F
      polaAtasanlk2.add(new Node(pg[2].width/25+ 24.5 *2.5   +250, 50+ 2    *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 27.5 *2.5   +250, 50+ 4    *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 32.5 *2.5   +250, 50+ 4    *2.5)); //3
      polaAtasanlk2.add(new Node(pg[2].width/25+ 35.5 *2.5   +250, 50+ 2    *2.5)); //4
      polaAtasanlk2.add(new Node(pg[2].width/25+ 37   *2.5   +250, 50+ 0    *2.5)); //F
      polaAtasanlk2.add(new Node(pg[2].width/25+ 50   *2.5   +250, 50+ 3.5  *2.5)); //J
      polaAtasanlk2.add(new Node(pg[2].width/25+ 47.5 *2.5   +250, 50+ 21   *2.5)); //I
      polaAtasanlk2.add(new Node(pg[2].width/25+ 49.5 *2.5   +250, 50+ 26   *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 52   *2.5   +250, 50+ 28   *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 54.5 *2.5   +250, 50+ 30   *2.5)); //E
      polaAtasanlk2.add(new Node(pg[2].width/25+ 54.5 *2.5   +250, 50+ 81.5 *2.5)); //N
      polaAtasanlk2.add(new Node(pg[2].width/25+ 5.5  *2.5   +250, 50+ 81.5 *2.5)); //N
      polaAtasanlk2.add(new Node(pg[2].width/25+ 5.5  *2.5   +250, 50+ 30   *2.5)); //E
      polaAtasanlk2.add(new Node(pg[2].width/25+ 6    *2.5   +250, 50+ 28   *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 9.5  *2.5   +250, 50+ 26   *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 12.5 *2.5   +250, 50+ 21   *2.5)); //I
    }
    
    if(templateAtasanlk==6){//POLA ATASAN BUKAAN DEPAN SIZE L
      atasanlk1.add(new Node(pg[3].width/2-25, 220));
      atasanlk1.add(new Node(pg[3].width/2-20, 230));
      atasanlk1.add(new Node(pg[3].width/2, 240));
      atasanlk1.add(new Node(pg[3].width/2+20, 230));
      atasanlk1.add(new Node(pg[3].width/2+25, 220)); // leher
      atasanlk1.add(new Node(pg[3].width/2+55, 240));
      atasanlk1.add(new Node(pg[3].width/2+45, 285));
      atasanlk1.add(new Node(pg[3].width/2+45, 300));
      atasanlk1.add(new Node(pg[3].width/2+55, 320));
      atasanlk1.add(new Node(pg[3].width/2+60, 420));
      atasanlk1.add(new Node(pg[3].width/2-60, 420));
      atasanlk1.add(new Node(pg[3].width/2-55, 320));
      atasanlk1.add(new Node(pg[3].width/2-45, 300));
      atasanlk1.add(new Node(pg[3].width/2-45, 285));
      atasanlk1.add(new Node(pg[3].width/2-55, 240));
      
      garisAtasanlk.add(new Node(pg[3].width/2, 240));
      garisAtasanlk.add(new Node(pg[3].width/2, 420));
      
      //POLA DEPAN
      //#Kiri
      polaAtasanlk1.add(new Node(pg[2].width/25+ 10   *2.5, 50+ 3.5  *2.5)); //J
      polaAtasanlk1.add(new Node(pg[2].width/25+ 23   *2.5, 50+ 0    *2.5)); //F
      polaAtasanlk1.add(new Node(pg[2].width/25+ 24.5 *2.5, 50+ 5    *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 27.5 *2.5, 50+ 9    *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 35   *2.5, 50+ 9    *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 35   *2.5, 50+ 81.5 *2.5)); //B
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 81.5 *2.5)); //N
      polaAtasanlk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 50+ 30   *2.5)); //E
      polaAtasanlk1.add(new Node(pg[2].width/25+ 6    *2.5, 50+ 28   *2.5)); //2
      polaAtasanlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 50+ 26   *2.5)); //1
      polaAtasanlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 50+ 21   *2.5)); //I

      //#Kanan
      polaAtasanlk2.add(new Node(pg[2].width/25+ 25   *2.5 +50, 50+ 9    *2.5)); 
      polaAtasanlk2.add(new Node(pg[2].width/25+ 32.5 *2.5 +50, 50+ 9    *2.5)); //3
      polaAtasanlk2.add(new Node(pg[2].width/25+ 35.5 *2.5 +50, 50+ 5    *2.5)); //4
      polaAtasanlk2.add(new Node(pg[2].width/25+ 37   *2.5 +50, 50+ 0    *2.5)); //F
      polaAtasanlk2.add(new Node(pg[2].width/25+ 50   *2.5 +50, 50+ 3.5  *2.5)); //J
      polaAtasanlk2.add(new Node(pg[2].width/25+ 47.5 *2.5 +50, 50+ 21   *2.5)); //I
      polaAtasanlk2.add(new Node(pg[2].width/25+ 49.5 *2.5 +50, 50+ 26   *2.5)); //1
      polaAtasanlk2.add(new Node(pg[2].width/25+ 52   *2.5 +50, 50+ 28   *2.5)); //2
      polaAtasanlk2.add(new Node(pg[2].width/25+ 54.5 *2.5 +50, 50+ 30   *2.5)); //E
      polaAtasanlk2.add(new Node(pg[2].width/25+ 54.5 *2.5 +50, 50+ 81.5 *2.5)); //N
      polaAtasanlk2.add(new Node(pg[2].width/25+ 25   *2.5 +50, 50+ 81.5 *2.5)); //B
      
      //POLA BELAKANG
      polaAtasanlk3.add(new Node(pg[2].width/25+ 10   *2.5   +250, 50+ 3.5  *2.5)); //J
      polaAtasanlk3.add(new Node(pg[2].width/25+ 23   *2.5   +250, 50+ 0    *2.5)); //F
      polaAtasanlk3.add(new Node(pg[2].width/25+ 24.5 *2.5   +250, 50+ 2    *2.5)); //1
      polaAtasanlk3.add(new Node(pg[2].width/25+ 27.5 *2.5   +250, 50+ 4    *2.5)); //2
      polaAtasanlk3.add(new Node(pg[2].width/25+ 32.5 *2.5   +250, 50+ 4    *2.5)); //3
      polaAtasanlk3.add(new Node(pg[2].width/25+ 35.5 *2.5   +250, 50+ 2    *2.5)); //4
      polaAtasanlk3.add(new Node(pg[2].width/25+ 37   *2.5   +250, 50+ 0    *2.5)); //F
      polaAtasanlk3.add(new Node(pg[2].width/25+ 50   *2.5   +250, 50+ 3.5  *2.5)); //J
      polaAtasanlk3.add(new Node(pg[2].width/25+ 47.5 *2.5   +250, 50+ 21   *2.5)); //I
      polaAtasanlk3.add(new Node(pg[2].width/25+ 49.5 *2.5   +250, 50+ 26   *2.5)); //1
      polaAtasanlk3.add(new Node(pg[2].width/25+ 52   *2.5   +250, 50+ 28   *2.5)); //2
      polaAtasanlk3.add(new Node(pg[2].width/25+ 54.5 *2.5   +250, 50+ 30   *2.5)); //E
      polaAtasanlk3.add(new Node(pg[2].width/25+ 54.5 *2.5   +250, 50+ 81.5 *2.5)); //N
      polaAtasanlk3.add(new Node(pg[2].width/25+ 5.5  *2.5   +250, 50+ 81.5 *2.5)); //N
      polaAtasanlk3.add(new Node(pg[2].width/25+ 5.5  *2.5   +250, 50+ 30   *2.5)); //E
      polaAtasanlk3.add(new Node(pg[2].width/25+ 6    *2.5   +250, 50+ 28   *2.5)); //2
      polaAtasanlk3.add(new Node(pg[2].width/25+ 9.5  *2.5   +250, 50+ 26   *2.5)); //1
      polaAtasanlk3.add(new Node(pg[2].width/25+ 12.5 *2.5   +250, 50+ 21   *2.5)); //I
    }
    
    newProject = false; 
    base();
    //base1();
  }
}

void selectCelanalk() {
  if (templateCelanalk>0) {
    if (!newProject) {
      for (int i = celanalk1.size()-1; i >= 0; i--)
        celanalk1.remove(celanalk1.get(i));
      for (int i = celanalk2.size()-1; i >= 0; i--)
        celanalk2.remove(celanalk2.get(i));
      for (int i = celanalk3.size()-1; i >= 0; i--)
        celanalk3.remove(celanalk3.get(i));  
      for (int i = garisCelanalk.size()-1; i >= 0; i--)
        garisCelanalk.remove(garisCelanalk.get(i));
      for (int i = garisCelanalk2.size()-1; i >= 0; i--)
        garisCelanalk2.remove(garisCelanalk2.get(i));
      for (int i = polaCelanalk1.size()-1; i >= 0; i--)
        polaCelanalk1.remove(polaCelanalk1.get(i));
      for (int i = polaCelanalk2.size()-1; i >= 0; i--)
        polaCelanalk2.remove(polaCelanalk2.get(i));
      for (int i = polaCelanalk3.size()-1; i >= 0; i--)
        polaCelanalk3.remove(polaCelanalk3.get(i));
      for (int i = polaCelanalk4.size()-1; i >= 0; i--)
        polaCelanalk4.remove(polaCelanalk4.get(i));
      for (int i = polaCelanalk5.size()-1; i >= 0; i--)
        polaCelanalk5.remove(polaCelanalk5.get(i));
      for (int i = polaCelanalk6.size()-1; i >= 0; i--)
        polaCelanalk6.remove(polaCelanalk6.get(i));
      for (int i = polaCelanalk7.size()-1; i >= 0; i--)
        polaCelanalk7.remove(polaCelanalk7.get(i));
      for (int i = polaCelanalk8.size()-1; i >= 0; i--)
        polaCelanalk8.remove(polaCelanalk8.get(i));
    }

    newProject = true;
    if (templateCelanalk==1) {//POLA CELANA PENDEK S
      celanalk1.add(new Node(pg[3].width/2-40, 360));//0,100
      celanalk1.add(new Node(pg[3].width/2+40, 360));//100,0
      celanalk1.add(new Node(pg[3].width/2+40, 370));//100,100
      celanalk1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celanalk2.add(new Node(pg[3].width/2-40, 370));
      celanalk2.add(new Node(pg[3].width/2+40, 370));
      celanalk2.add(new Node(pg[3].width/2+50, 400));
      celanalk2.add(new Node(pg[3].width/2+60, 550));
      celanalk2.add(new Node(pg[3].width/2+5, 550));
      celanalk2.add(new Node(pg[3].width/2, 450));
      celanalk2.add(new Node(pg[3].width/2-5, 550));
      celanalk2.add(new Node(pg[3].width/2-60, 550));
      celanalk2.add(new Node(pg[3].width/2-50, 400));
      
      //POLA DEPAN
      //kiri
      polaCelanalk1.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 6    *2.5)); //K
      polaCelanalk1.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 23   *2.5)); //N
      polaCelanalk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 27   *2.5)); //
      polaCelanalk1.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 30   *2.5)); //F
      polaCelanalk1.add(new Node(pg[2].width/25+ 27   *2.5, 430+ 65   *2.5)); //U
      polaCelanalk1.add(new Node(pg[2].width/25+ 3    *2.5, 430+ 65   *2.5)); //T
      polaCelanalk1.add(new Node(pg[2].width/25+ 1.5  *2.5, 430+ 30   *2.5)); //B
      polaCelanalk1.add(new Node(pg[2].width/25+ 2    *2.5, 430+ 23   *2.5)); //O
      polaCelanalk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 430+ 5    *2.5)); //J
      polaCelanalk1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelanalk1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelanalk1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelanalk1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelanalk1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelanalk1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelanalk1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk2.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 6    *2.5)); //K
      polaCelanalk2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 6    *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 17   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 26.5 *2.5, 430+ 22   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 23   *2.5)); //N

      //kanan
      polaCelanalk3.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk3.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 23   *2.5)); //N
      polaCelanalk3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 27   *2.5)); //
      polaCelanalk3.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 30   *2.5)); //F
      polaCelanalk3.add(new Node(pg[2].width/25- 27   *2.5 +200, 430+ 65   *2.5)); //U
      polaCelanalk3.add(new Node(pg[2].width/25- 3    *2.5 +200, 430+ 65   *2.5)); //T
      polaCelanalk3.add(new Node(pg[2].width/25- 1.5  *2.5 +200, 430+ 30   *2.5)); //B
      polaCelanalk3.add(new Node(pg[2].width/25- 2    *2.5 +200, 430+ 23   *2.5)); //O
      polaCelanalk3.add(new Node(pg[2].width/25- 5.5  *2.5 +200, 430+ 5    *2.5)); //J
      polaCelanalk3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelanalk3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelanalk3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelanalk3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelanalk3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelanalk3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelanalk3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk4.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 17   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 26.5 *2.5 +200, 430+ 22   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 23   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelanalk5.add(new Node(pg[2].width/25+ 24.5 *2.5 +210, 430+ 3    *2.5)); //K
      polaCelanalk5.add(new Node(pg[2].width/25+ 29.5 *2.5 +210, 430+ 23   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 32.5 *2.5 +210, 430+ 27   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 36.5 *2.5 +210, 430+ 30   *2.5)); //F
      polaCelanalk5.add(new Node(pg[2].width/25+ 31   *2.5 +210, 430+ 65   *2.5)); //U
      polaCelanalk5.add(new Node(pg[2].width/25+ 3    *2.5 +210, 430+ 65   *2.5)); //T
      polaCelanalk5.add(new Node(pg[2].width/25+ 1.5  *2.5 +210, 430+ 30   *2.5)); //B
      polaCelanalk5.add(new Node(pg[2].width/25+ 1.5  *2.5 +210, 430+ 5    *2.5)); //J
      polaCelanalk5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelanalk5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelanalk5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelanalk6.add(new Node(pg[2].width/25- 24.5 *2.5 +430, 430+ 3    *2.5)); //K
      polaCelanalk6.add(new Node(pg[2].width/25- 29.5 *2.5 +430, 430+ 23   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 32.5 *2.5 +430, 430+ 27   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 36.5 *2.5 +430, 430+ 30   *2.5)); //F
      polaCelanalk6.add(new Node(pg[2].width/25- 31   *2.5 +430, 430+ 65   *2.5)); //U
      polaCelanalk6.add(new Node(pg[2].width/25- 3    *2.5 +430, 430+ 65   *2.5)); //T
      polaCelanalk6.add(new Node(pg[2].width/25- 1.5  *2.5 +430, 430+ 30   *2.5)); //B
      polaCelanalk6.add(new Node(pg[2].width/25- 1.5  *2.5 +430, 430+ 5    *2.5)); //J
      polaCelanalk6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelanalk6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelanalk6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    if (templateCelanalk==2) {//POLA CELANA PANJANG S
      celanalk1.add(new Node(pg[3].width/2-40, 360));//0,100
      celanalk1.add(new Node(pg[3].width/2+40, 360));//100,0
      celanalk1.add(new Node(pg[3].width/2+40, 370));//100,100
      celanalk1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celanalk2.add(new Node(pg[3].width/2-40, 370));
      celanalk2.add(new Node(pg[3].width/2+40, 370));
      celanalk2.add(new Node(pg[3].width/2+50, 400));
      celanalk2.add(new Node(pg[3].width/2+60, 700));
      celanalk2.add(new Node(pg[3].width/2+10, 700));
      celanalk2.add(new Node(pg[3].width/2, 450));
      celanalk2.add(new Node(pg[3].width/2-10, 700));
      celanalk2.add(new Node(pg[3].width/2-60, 700));
      celanalk2.add(new Node(pg[3].width/2-50, 400));
      
      //POLA DEPAN
      //kiri
      polaCelanalk1.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 6    *2.5)); //K
      polaCelanalk1.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 23   *2.5)); //N
      polaCelanalk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 27   *2.5)); //
      polaCelanalk1.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 30   *2.5)); //F
      polaCelanalk1.add(new Node(pg[2].width/25+ 27   *2.5, 430+ 65   *2.5)); //U
      polaCelanalk1.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 99   *2.5)); //R
      polaCelanalk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 430+ 99   *2.5)); //Q
      polaCelanalk1.add(new Node(pg[2].width/25+ 3    *2.5, 430+ 65   *2.5)); //T
      polaCelanalk1.add(new Node(pg[2].width/25+ 1.5  *2.5, 430+ 30   *2.5)); //B
      polaCelanalk1.add(new Node(pg[2].width/25+ 2    *2.5, 430+ 23   *2.5)); //O
      polaCelanalk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 430+ 5    *2.5)); //J
      polaCelanalk1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelanalk1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelanalk1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelanalk1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelanalk1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelanalk1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelanalk1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk2.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 6    *2.5)); //K
      polaCelanalk2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 6    *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 17   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 26.5 *2.5, 430+ 22   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 24.5 *2.5, 430+ 23   *2.5)); //N

      //kanan
      polaCelanalk3.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk3.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 23   *2.5)); //N
      polaCelanalk3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 27   *2.5)); //
      polaCelanalk3.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 30   *2.5)); //F
      polaCelanalk3.add(new Node(pg[2].width/25- 27   *2.5 +200, 430+ 65   *2.5)); //U
      polaCelanalk3.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 99   *2.5)); //R
      polaCelanalk3.add(new Node(pg[2].width/25- 5.5  *2.5 +200, 430+ 99   *2.5)); //Q
      polaCelanalk3.add(new Node(pg[2].width/25- 3    *2.5 +200, 430+ 65   *2.5)); //T
      polaCelanalk3.add(new Node(pg[2].width/25- 1.5  *2.5 +200, 430+ 30   *2.5)); //B
      polaCelanalk3.add(new Node(pg[2].width/25- 2    *2.5 +200, 430+ 23   *2.5)); //O
      polaCelanalk3.add(new Node(pg[2].width/25- 5.5  *2.5 +200, 430+ 5    *2.5)); //J
      polaCelanalk3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelanalk3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelanalk3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelanalk3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelanalk3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelanalk3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelanalk3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk4.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 17   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 26.5 *2.5 +200, 430+ 22   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 24.5 *2.5 +200, 430+ 23   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelanalk5.add(new Node(pg[2].width/25+ 24.5 *2.5 +210, 430+ 3    *2.5)); //K
      polaCelanalk5.add(new Node(pg[2].width/25+ 29.5 *2.5 +210, 430+ 23   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 32.5 *2.5 +210, 430+ 27   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 36.5 *2.5 +210, 430+ 30   *2.5)); //F
      polaCelanalk5.add(new Node(pg[2].width/25+ 31   *2.5 +210, 430+ 65   *2.5)); //U
      polaCelanalk5.add(new Node(pg[2].width/25+ 28.5 *2.5 +210, 430+ 99   *2.5)); //R
      polaCelanalk5.add(new Node(pg[2].width/25+ 5.5  *2.5 +210, 430+ 99   *2.5)); //Q
      polaCelanalk5.add(new Node(pg[2].width/25+ 3    *2.5 +210, 430+ 65   *2.5)); //T
      polaCelanalk5.add(new Node(pg[2].width/25+ 1.5  *2.5 +210, 430+ 30   *2.5)); //B
      polaCelanalk5.add(new Node(pg[2].width/25+ 1.5  *2.5 +210, 430+ 5    *2.5)); //J
      polaCelanalk5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelanalk5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelanalk5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelanalk6.add(new Node(pg[2].width/25- 24.5 *2.5 +430, 430+ 3    *2.5)); //K
      polaCelanalk6.add(new Node(pg[2].width/25- 29.5 *2.5 +430, 430+ 23   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 32.5 *2.5 +430, 430+ 27   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 36.5 *2.5 +430, 430+ 30   *2.5)); //F
      polaCelanalk6.add(new Node(pg[2].width/25- 31   *2.5 +430, 430+ 65   *2.5)); //U
      polaCelanalk6.add(new Node(pg[2].width/25- 28.5 *2.5 +430, 430+ 99   *2.5)); //R
      polaCelanalk6.add(new Node(pg[2].width/25- 5.5  *2.5 +430, 430+ 99   *2.5)); //Q
      polaCelanalk6.add(new Node(pg[2].width/25- 3    *2.5 +430, 430+ 65   *2.5)); //T
      polaCelanalk6.add(new Node(pg[2].width/25- 1.5  *2.5 +430, 430+ 30   *2.5)); //B
      polaCelanalk6.add(new Node(pg[2].width/25- 1.5  *2.5 +430, 430+ 5    *2.5)); //J
      polaCelanalk6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelanalk6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelanalk6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    if (templateCelanalk==3) {//POLA CELANA PENDEK M
      celanalk1.add(new Node(pg[3].width/2-40, 360));//0,100
      celanalk1.add(new Node(pg[3].width/2+40, 360));//100,0
      celanalk1.add(new Node(pg[3].width/2+40, 370));//100,100
      celanalk1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celanalk2.add(new Node(pg[3].width/2-40, 370));
      celanalk2.add(new Node(pg[3].width/2+40, 370));
      celanalk2.add(new Node(pg[3].width/2+50, 400));
      celanalk2.add(new Node(pg[3].width/2+60, 550));
      celanalk2.add(new Node(pg[3].width/2+5, 550));
      celanalk2.add(new Node(pg[3].width/2, 450));
      celanalk2.add(new Node(pg[3].width/2-5, 550));
      celanalk2.add(new Node(pg[3].width/2-60, 550));
      celanalk2.add(new Node(pg[3].width/2-50, 400));
      
      //POLA DEPAN
      //kiri
      polaCelanalk1.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 6    *2.5)); //K
      polaCelanalk1.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 27   *2.5)); //N
      polaCelanalk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 29   *2.5)); //
      polaCelanalk1.add(new Node(pg[2].width/25+ 30   *2.5, 430+ 34   *2.5)); //F
      polaCelanalk1.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 70   *2.5)); //U
      polaCelanalk1.add(new Node(pg[2].width/25+ 2.5  *2.5, 430+ 70   *2.5)); //T
      polaCelanalk1.add(new Node(pg[2].width/25+ 0.5  *2.5, 430+ 34   *2.5)); //B
      polaCelanalk1.add(new Node(pg[2].width/25+ 1    *2.5, 430+ 27   *2.5)); //O
      polaCelanalk1.add(new Node(pg[2].width/25+ 5    *2.5, 430+ 5    *2.5)); //J
      polaCelanalk1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelanalk1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelanalk1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelanalk1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelanalk1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelanalk1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelanalk1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk2.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 6    *2.5)); //K
      polaCelanalk2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 6    *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 18   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 24   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 27   *2.5)); //N

      //kanan
      polaCelanalk3.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk3.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 27   *2.5)); //N
      polaCelanalk3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 29   *2.5)); //
      polaCelanalk3.add(new Node(pg[2].width/25- 30   *2.5 +200, 430+ 34   *2.5)); //F
      polaCelanalk3.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 70   *2.5)); //U
      polaCelanalk3.add(new Node(pg[2].width/25- 2.5  *2.5 +200, 430+ 70   *2.5)); //T
      polaCelanalk3.add(new Node(pg[2].width/25- 0.5  *2.5 +200, 430+ 34   *2.5)); //B
      polaCelanalk3.add(new Node(pg[2].width/25- 1    *2.5 +200, 430+ 27   *2.5)); //O
      polaCelanalk3.add(new Node(pg[2].width/25- 5    *2.5 +200, 430+ 5    *2.5)); //J
      polaCelanalk3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelanalk3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelanalk3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelanalk3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelanalk3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelanalk3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelanalk3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk4.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 18   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 24   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 27   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelanalk5.add(new Node(pg[2].width/25+ 26   *2.5 +210, 430+ 3    *2.5)); //K
      polaCelanalk5.add(new Node(pg[2].width/25+ 30.5 *2.5 +210, 430+ 24   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 33.5 *2.5 +210, 430+ 29   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 38   *2.5 +210, 430+ 34   *2.5)); //F
      polaCelanalk5.add(new Node(pg[2].width/25+ 31.5 *2.5 +210, 430+ 70   *2.5)); //U
      polaCelanalk5.add(new Node(pg[2].width/25+ 3    *2.5 +210, 430+ 70   *2.5)); //T
      polaCelanalk5.add(new Node(pg[2].width/25+ 0.5  *2.5 +210, 430+ 34   *2.5)); //B
      polaCelanalk5.add(new Node(pg[2].width/25+ 0.5  *2.5 +210, 430+ 5    *2.5)); //J
      polaCelanalk5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelanalk5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelanalk5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelanalk6.add(new Node(pg[2].width/25- 26   *2.5 +430, 430+ 3    *2.5)); //K
      polaCelanalk6.add(new Node(pg[2].width/25- 30.5 *2.5 +430, 430+ 24   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 33.5 *2.5 +430, 430+ 29   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 38   *2.5 +430, 430+ 34   *2.5)); //F
      polaCelanalk6.add(new Node(pg[2].width/25- 31.5 *2.5 +430, 430+ 70   *2.5)); //U
      polaCelanalk6.add(new Node(pg[2].width/25- 3    *2.5 +430, 430+ 70   *2.5)); //T
      polaCelanalk6.add(new Node(pg[2].width/25- 0.5  *2.5 +430, 430+ 34   *2.5)); //B
      polaCelanalk6.add(new Node(pg[2].width/25- 0.5  *2.5 +430, 430+ 5    *2.5)); //J
      polaCelanalk6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelanalk6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelanalk6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    if (templateCelanalk==4) {//POLA CELANA PANJANG M
      celanalk1.add(new Node(pg[3].width/2-40, 360));//0,100
      celanalk1.add(new Node(pg[3].width/2+40, 360));//100,0
      celanalk1.add(new Node(pg[3].width/2+40, 370));//100,100
      celanalk1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celanalk2.add(new Node(pg[3].width/2-40, 370));
      celanalk2.add(new Node(pg[3].width/2+40, 370));
      celanalk2.add(new Node(pg[3].width/2+50, 400));
      celanalk2.add(new Node(pg[3].width/2+60, 700));
      celanalk2.add(new Node(pg[3].width/2+10, 700));
      celanalk2.add(new Node(pg[3].width/2, 450));
      celanalk2.add(new Node(pg[3].width/2-10, 700));
      celanalk2.add(new Node(pg[3].width/2-60, 700));
      celanalk2.add(new Node(pg[3].width/2-50, 400));
      
      //POLA DEPAN
      //kiri
      polaCelanalk1.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 6    *2.5)); //K
      polaCelanalk1.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 27   *2.5)); //N
      polaCelanalk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 29   *2.5)); //
      polaCelanalk1.add(new Node(pg[2].width/25+ 30   *2.5, 430+ 34   *2.5)); //F
      polaCelanalk1.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 70   *2.5)); //U
      polaCelanalk1.add(new Node(pg[2].width/25+ 26   *2.5, 430+ 103  *2.5)); //R
      polaCelanalk1.add(new Node(pg[2].width/25+ 4    *2.5, 430+ 103  *2.5)); //Q
      polaCelanalk1.add(new Node(pg[2].width/25+ 2.5  *2.5, 430+ 70   *2.5)); //T
      polaCelanalk1.add(new Node(pg[2].width/25+ 0.5  *2.5, 430+ 34   *2.5)); //B
      polaCelanalk1.add(new Node(pg[2].width/25+ 1    *2.5, 430+ 27   *2.5)); //O
      polaCelanalk1.add(new Node(pg[2].width/25+ 5    *2.5, 430+ 5    *2.5)); //J
      polaCelanalk1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelanalk1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelanalk1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelanalk1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelanalk1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelanalk1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelanalk1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk2.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 6    *2.5)); //K
      polaCelanalk2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 6    *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 18   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 27.5 *2.5, 430+ 24   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 25   *2.5, 430+ 27   *2.5)); //N

      //kanan
      polaCelanalk3.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk3.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 27   *2.5)); //N
      polaCelanalk3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 29   *2.5)); //
      polaCelanalk3.add(new Node(pg[2].width/25- 30   *2.5 +200, 430+ 34   *2.5)); //F
      polaCelanalk3.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 70   *2.5)); //U
      polaCelanalk3.add(new Node(pg[2].width/25- 26   *2.5 +200, 430+ 103  *2.5)); //R
      polaCelanalk3.add(new Node(pg[2].width/25- 4    *2.5 +200, 430+ 103  *2.5)); //Q
      polaCelanalk3.add(new Node(pg[2].width/25- 2.5  *2.5 +200, 430+ 70   *2.5)); //T
      polaCelanalk3.add(new Node(pg[2].width/25- 0.5  *2.5 +200, 430+ 34   *2.5)); //B
      polaCelanalk3.add(new Node(pg[2].width/25- 1    *2.5 +200, 430+ 27   *2.5)); //O
      polaCelanalk3.add(new Node(pg[2].width/25- 5    *2.5 +200, 430+ 5    *2.5)); //J
      polaCelanalk3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelanalk3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelanalk3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelanalk3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelanalk3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelanalk3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelanalk3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk4.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 18   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 27.5 *2.5 +200, 430+ 24   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 25   *2.5 +200, 430+ 27   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelanalk5.add(new Node(pg[2].width/25+ 26   *2.5 +210, 430+ 3    *2.5)); //K
      polaCelanalk5.add(new Node(pg[2].width/25+ 30.5 *2.5 +210, 430+ 24   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 33.5 *2.5 +210, 430+ 29   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 38   *2.5 +210, 430+ 34   *2.5)); //F
      polaCelanalk5.add(new Node(pg[2].width/25+ 31.5 *2.5 +210, 430+ 70   *2.5)); //U
      polaCelanalk5.add(new Node(pg[2].width/25+ 30   *2.5 +210, 430+ 103  *2.5)); //R
      polaCelanalk5.add(new Node(pg[2].width/25+ 5.5  *2.5 +210, 430+ 103  *2.5)); //Q
      polaCelanalk5.add(new Node(pg[2].width/25+ 3    *2.5 +210, 430+ 70   *2.5)); //T
      polaCelanalk5.add(new Node(pg[2].width/25+ 0.5  *2.5 +210, 430+ 34   *2.5)); //B
      polaCelanalk5.add(new Node(pg[2].width/25+ 0.5  *2.5 +210, 430+ 5    *2.5)); //J
      polaCelanalk5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelanalk5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelanalk5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelanalk6.add(new Node(pg[2].width/25- 26   *2.5 +430, 430+ 3    *2.5)); //K
      polaCelanalk6.add(new Node(pg[2].width/25- 30.5 *2.5 +430, 430+ 24   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 33.5 *2.5 +430, 430+ 29   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 38   *2.5 +430, 430+ 34   *2.5)); //F
      polaCelanalk6.add(new Node(pg[2].width/25- 31.5 *2.5 +430, 430+ 70   *2.5)); //U
      polaCelanalk6.add(new Node(pg[2].width/25- 30   *2.5 +430, 430+ 103  *2.5)); //R
      polaCelanalk6.add(new Node(pg[2].width/25- 5.5  *2.5 +430, 430+ 103  *2.5)); //Q
      polaCelanalk6.add(new Node(pg[2].width/25- 3    *2.5 +430, 430+ 70   *2.5)); //T
      polaCelanalk6.add(new Node(pg[2].width/25- 0.5  *2.5 +430, 430+ 34   *2.5)); //B
      polaCelanalk6.add(new Node(pg[2].width/25- 0.5  *2.5 +430, 430+ 5    *2.5)); //J
      polaCelanalk6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelanalk6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelanalk6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    if (templateCelanalk==5) {//POLA CELANA PENDEK L
      celanalk1.add(new Node(pg[3].width/2-40, 360));//0,100
      celanalk1.add(new Node(pg[3].width/2+40, 360));//100,0
      celanalk1.add(new Node(pg[3].width/2+40, 370));//100,100
      celanalk1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celanalk2.add(new Node(pg[3].width/2-40, 370));
      celanalk2.add(new Node(pg[3].width/2+40, 370));
      celanalk2.add(new Node(pg[3].width/2+50, 400));
      celanalk2.add(new Node(pg[3].width/2+60, 550));
      celanalk2.add(new Node(pg[3].width/2+5, 550));
      celanalk2.add(new Node(pg[3].width/2, 450));
      celanalk2.add(new Node(pg[3].width/2-5, 550));
      celanalk2.add(new Node(pg[3].width/2-60, 550));
      celanalk2.add(new Node(pg[3].width/2-50, 400));
      
      //POLA DEPAN
      //kiri
      polaCelanalk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 6    *2.5)); //K
      polaCelanalk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 33   *2.5)); //N
      polaCelanalk1.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 38   *2.5)); //
      polaCelanalk1.add(new Node(pg[2].width/25+ 31.5 *2.5, 430+ 40   *2.5)); //F
      polaCelanalk1.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 80   *2.5)); //U
      polaCelanalk1.add(new Node(pg[2].width/25+ 1.5  *2.5, 430+ 80   *2.5)); //T
      polaCelanalk1.add(new Node(pg[2].width/25+ 0    *2.5, 430+ 32   *2.5)); //B
      polaCelanalk1.add(new Node(pg[2].width/25+ 1    *2.5, 430+ 25   *2.5)); //O
      polaCelanalk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 430+ 5    *2.5)); //J
      polaCelanalk1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelanalk1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelanalk1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelanalk1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelanalk1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelanalk1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelanalk1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk2.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 6    *2.5)); //K
      polaCelanalk2.add(new Node(pg[2].width/25+ 29.5 *2.5, 430+ 6    *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 29.5 *2.5, 430+ 24   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 29   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 33   *2.5)); //N

      //kanan
      polaCelanalk3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 33   *2.5)); //N
      polaCelanalk3.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 38   *2.5)); //
      polaCelanalk3.add(new Node(pg[2].width/25- 31.5 *2.5 +200, 430+ 40   *2.5)); //F
      polaCelanalk3.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 80   *2.5)); //U
      polaCelanalk3.add(new Node(pg[2].width/25- 1.5  *2.5 +200, 430+ 80   *2.5)); //T
      polaCelanalk3.add(new Node(pg[2].width/25- 0    *2.5 +200, 430+ 32   *2.5)); //B
      polaCelanalk3.add(new Node(pg[2].width/25- 1    *2.5 +200, 430+ 25   *2.5)); //O
      polaCelanalk3.add(new Node(pg[2].width/25- 5.5  *2.5 +200, 430+ 5    *2.5)); //J
      polaCelanalk3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelanalk3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelanalk3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelanalk3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelanalk3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelanalk3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelanalk3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk4.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk4.add(new Node(pg[2].width/25- 29.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 29.5 *2.5 +200, 430+ 24   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 29   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 33   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelanalk5.add(new Node(pg[2].width/25+ 26.5 *2.5 +210, 430+ 3    *2.5)); //K
      polaCelanalk5.add(new Node(pg[2].width/25+ 30.5 *2.5 +210, 430+ 29   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 33.5 *2.5 +210, 430+ 35   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 38.5 *2.5 +210, 430+ 40   *2.5)); //F
      polaCelanalk5.add(new Node(pg[2].width/25+ 32.5 *2.5 +210, 430+ 80   *2.5)); //U
      polaCelanalk5.add(new Node(pg[2].width/25+ 3    *2.5 +210, 430+ 80   *2.5)); //T
      polaCelanalk5.add(new Node(pg[2].width/25+ 0    *2.5 +210, 430+ 40   *2.5)); //B
      polaCelanalk5.add(new Node(pg[2].width/25+ 0    *2.5 +210, 430+ 5    *2.5)); //J
      polaCelanalk5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelanalk5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelanalk5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelanalk6.add(new Node(pg[2].width/25- 26.5 *2.5 +430, 430+ 3    *2.5)); //K
      polaCelanalk6.add(new Node(pg[2].width/25- 30.5 *2.5 +430, 430+ 29   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 33.5 *2.5 +430, 430+ 35   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 38.5 *2.5 +430, 430+ 40   *2.5)); //F
      polaCelanalk6.add(new Node(pg[2].width/25- 32.5 *2.5 +430, 430+ 80   *2.5)); //U
      polaCelanalk6.add(new Node(pg[2].width/25- 3    *2.5 +430, 430+ 80   *2.5)); //T
      polaCelanalk6.add(new Node(pg[2].width/25- 0    *2.5 +430, 430+ 40   *2.5)); //B
      polaCelanalk6.add(new Node(pg[2].width/25- 0    *2.5 +430, 430+ 5    *2.5)); //J
      polaCelanalk6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelanalk6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelanalk6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    if(templateCelana==6){//POLA CELANA PANJANG L
      celanalk1.add(new Node(pg[3].width/2-40, 360));//0,100
      celanalk1.add(new Node(pg[3].width/2+40, 360));//100,0
      celanalk1.add(new Node(pg[3].width/2+40, 370));//100,100
      celanalk1.add(new Node(pg[3].width/2-40, 370));//0,0
      
      celanalk2.add(new Node(pg[3].width/2-40, 370));
      celanalk2.add(new Node(pg[3].width/2+40, 370));
      celanalk2.add(new Node(pg[3].width/2+50, 400));
      celanalk2.add(new Node(pg[3].width/2+60, 700));
      celanalk2.add(new Node(pg[3].width/2+10, 700));
      celanalk2.add(new Node(pg[3].width/2, 450));
      celanalk2.add(new Node(pg[3].width/2-10, 700));
      celanalk2.add(new Node(pg[3].width/2-60, 700));
      celanalk2.add(new Node(pg[3].width/2-50, 400));
      
      //POLA DEPAN
      //kiri
      polaCelanalk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 6    *2.5)); //K
      polaCelanalk1.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 33   *2.5)); //N
      polaCelanalk1.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 38   *2.5)); //
      polaCelanalk1.add(new Node(pg[2].width/25+ 31.5 *2.5, 430+ 40   *2.5)); //F
      polaCelanalk1.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 80   *2.5)); //U
      polaCelanalk1.add(new Node(pg[2].width/25+ 26.5 *2.5, 430+ 107  *2.5)); //R
      polaCelanalk1.add(new Node(pg[2].width/25+ 3.5  *2.5, 430+ 107  *2.5)); //Q
      polaCelanalk1.add(new Node(pg[2].width/25+ 1.5  *2.5, 430+ 80   *2.5)); //T
      polaCelanalk1.add(new Node(pg[2].width/25+ 0    *2.5, 430+ 32   *2.5)); //B
      polaCelanalk1.add(new Node(pg[2].width/25+ 1    *2.5, 430+ 25   *2.5)); //O
      polaCelanalk1.add(new Node(pg[2].width/25+ 5.5  *2.5, 430+ 5    *2.5)); //J
      polaCelanalk1.add(new Node(pg[2].width/25+ 10   *2.5, 430+ 5    *2.5)); //1
      polaCelanalk1.add(new Node(pg[2].width/25+ 11.5 *2.5, 430+ 16   *2.5)); //2
      polaCelanalk1.add(new Node(pg[2].width/25+ 13   *2.5, 430+ 5    *2.5)); //3
      polaCelanalk1.add(new Node(pg[2].width/25+ 15   *2.5, 430+ 5.5  *2.5)); //I
      polaCelanalk1.add(new Node(pg[2].width/25+ 17   *2.5, 430+ 6    *2.5)); //4
      polaCelanalk1.add(new Node(pg[2].width/25+ 18.5 *2.5, 430+ 16   *2.5)); //5
      polaCelanalk1.add(new Node(pg[2].width/25+ 20   *2.5, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk2.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 6    *2.5)); //K
      polaCelanalk2.add(new Node(pg[2].width/25+ 29.5 *2.5, 430+ 6    *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 29.5 *2.5, 430+ 24   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 28.5 *2.5, 430+ 29   *2.5)); //
      polaCelanalk2.add(new Node(pg[2].width/25+ 25.5 *2.5, 430+ 33   *2.5)); //N

      //kanan
      polaCelanalk3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk3.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 33   *2.5)); //N
      polaCelanalk3.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 38   *2.5)); //
      polaCelanalk3.add(new Node(pg[2].width/25- 31.5 *2.5 +200, 430+ 40   *2.5)); //F
      polaCelanalk3.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 80   *2.5)); //U
      polaCelanalk3.add(new Node(pg[2].width/25- 26.5 *2.5 +200, 430+ 107  *2.5)); //R
      polaCelanalk3.add(new Node(pg[2].width/25- 3.5  *2.5 +200, 430+ 107  *2.5)); //Q
      polaCelanalk3.add(new Node(pg[2].width/25- 1.5  *2.5 +200, 430+ 80   *2.5)); //T
      polaCelanalk3.add(new Node(pg[2].width/25- 0    *2.5 +200, 430+ 32   *2.5)); //B
      polaCelanalk3.add(new Node(pg[2].width/25- 1    *2.5 +200, 430+ 25   *2.5)); //O
      polaCelanalk3.add(new Node(pg[2].width/25- 5.5  *2.5 +200, 430+ 5    *2.5)); //J
      polaCelanalk3.add(new Node(pg[2].width/25- 10   *2.5 +200, 430+ 5    *2.5)); //1
      polaCelanalk3.add(new Node(pg[2].width/25- 11.5 *2.5 +200, 430+ 16   *2.5)); //2
      polaCelanalk3.add(new Node(pg[2].width/25- 13   *2.5 +200, 430+ 5    *2.5)); //3
      polaCelanalk3.add(new Node(pg[2].width/25- 15   *2.5 +200, 430+ 5.5  *2.5)); //I
      polaCelanalk3.add(new Node(pg[2].width/25- 17   *2.5 +200, 430+ 6    *2.5)); //4
      polaCelanalk3.add(new Node(pg[2].width/25- 18.5 *2.5 +200, 430+ 16   *2.5)); //5
      polaCelanalk3.add(new Node(pg[2].width/25- 20   *2.5 +200, 430+ 6    *2.5)); //6

      //POLA 
      polaCelanalk4.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 6    *2.5)); //K
      polaCelanalk4.add(new Node(pg[2].width/25- 29.5 *2.5 +200, 430+ 6    *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 29.5 *2.5 +200, 430+ 24   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 28.5 *2.5 +200, 430+ 29   *2.5)); //
      polaCelanalk4.add(new Node(pg[2].width/25- 25.5 *2.5 +200, 430+ 33   *2.5)); //N
      
      //POLA BELAKANG
      //kiri
      polaCelanalk5.add(new Node(pg[2].width/25+ 26.5 *2.5 +210, 430+ 3    *2.5)); //K
      polaCelanalk5.add(new Node(pg[2].width/25+ 30.5 *2.5 +210, 430+ 29   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 33.5 *2.5 +210, 430+ 35   *2.5)); //
      polaCelanalk5.add(new Node(pg[2].width/25+ 38.5 *2.5 +210, 430+ 40   *2.5)); //F
      polaCelanalk5.add(new Node(pg[2].width/25+ 32.5 *2.5 +210, 430+ 80   *2.5)); //U
      polaCelanalk5.add(new Node(pg[2].width/25+ 30.5 *2.5 +210, 430+ 107  *2.5)); //R
      polaCelanalk5.add(new Node(pg[2].width/25+ 5.5  *2.5 +210, 430+ 107  *2.5)); //Q
      polaCelanalk5.add(new Node(pg[2].width/25+ 3    *2.5 +210, 430+ 80   *2.5)); //T
      polaCelanalk5.add(new Node(pg[2].width/25+ 0    *2.5 +210, 430+ 40   *2.5)); //B
      polaCelanalk5.add(new Node(pg[2].width/25+ 0    *2.5 +210, 430+ 5    *2.5)); //J
      polaCelanalk5.add(new Node(pg[2].width/25+ 13.5 *2.5 +210, 430+ 5    *2.5)); //1
      polaCelanalk5.add(new Node(pg[2].width/25+ 15   *2.5 +210, 430+ 16   *2.5)); //I
      polaCelanalk5.add(new Node(pg[2].width/25+ 16.5 *2.5 +210, 430+ 5    *2.5)); //2

      //kanan
      polaCelanalk6.add(new Node(pg[2].width/25- 26.5 *2.5 +430, 430+ 3    *2.5)); //K
      polaCelanalk6.add(new Node(pg[2].width/25- 30.5 *2.5 +430, 430+ 29   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 33.5 *2.5 +430, 430+ 35   *2.5)); //
      polaCelanalk6.add(new Node(pg[2].width/25- 38.5 *2.5 +430, 430+ 40   *2.5)); //F
      polaCelanalk6.add(new Node(pg[2].width/25- 32.5 *2.5 +430, 430+ 80   *2.5)); //U
      polaCelanalk6.add(new Node(pg[2].width/25- 30.5 *2.5 +430, 430+ 107  *2.5)); //R
      polaCelanalk6.add(new Node(pg[2].width/25- 5.5  *2.5 +430, 430+ 107  *2.5)); //Q
      polaCelanalk6.add(new Node(pg[2].width/25- 3    *2.5 +430, 430+ 80   *2.5)); //T
      polaCelanalk6.add(new Node(pg[2].width/25- 0    *2.5 +430, 430+ 40   *2.5)); //B
      polaCelanalk6.add(new Node(pg[2].width/25- 0    *2.5 +430, 430+ 5    *2.5)); //J
      polaCelanalk6.add(new Node(pg[2].width/25- 13.5 *2.5 +430, 430+ 5    *2.5)); //1
      polaCelanalk6.add(new Node(pg[2].width/25- 15   *2.5 +430, 430+ 16   *2.5)); //I
      polaCelanalk6.add(new Node(pg[2].width/25- 16.5 *2.5 +430, 430+ 5    *2.5)); //2
    }
    
    newProject = false; 
    base();
  }
}

void selectLeher() {
  if (templateLeher>0) {
    if (!newProject) {
      for (int i = leher1.size()-1; i >= 0; i--)
        leher1.remove(leher1.get(i));
      for (int i = leher2.size()-1; i >= 0; i--)
        leher2.remove(leher2.get(i));
      for (int i = leher3.size()-1; i >= 0; i--)
        leher3.remove(leher3.get(i));  
      for (int i = garisLeher.size()-1; i >= 0; i--)
        garisLeher.remove(garisLeher.get(i));
      for (int i = garisLeher2.size()-1; i >= 0; i--)
        garisLeher2.remove(garisLeher2.get(i));
      for (int i = polaLeher1.size()-1; i >= 0; i--)
        polaLeher1.remove(polaLeher1.get(i));
      for (int i = polaLeher2.size()-1; i >= 0; i--)
        polaLeher2.remove(polaLeher2.get(i));
      for (int i = polaLeher3.size()-1; i >= 0; i--)
        polaLeher3.remove(polaLeher3.get(i));
      for (int i = polaLeher4.size()-1; i >= 0; i--)
        polaLeher4.remove(polaLeher4.get(i));
      for (int i = polaLeher5.size()-1; i >= 0; i--)
        polaLeher5.remove(polaLeher5.get(i));
    }

    newProject = true;
    if (templateLeher==1) { //kerah kemeja s
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+10, 260));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2-10, 260));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2, 215));
      leher1.add(new Node(pg[3].width/2+25, 220));
      
      
      polaLeher1.add(new Node(pg[2].width/20+ 5    *5, pg[2].height/10+ 4.5  *5)); //C
      polaLeher1.add(new Node(pg[2].width/20+ 23.5 *5, pg[2].height/10+ 5    *5)); //A
      polaLeher1.add(new Node(pg[2].width/20+ 42   *5, pg[2].height/10+ 4.5  *5)); //C
      polaLeher1.add(new Node(pg[2].width/20+ 47   *5, pg[2].height/10+ 3.5  *5)); //G
      polaLeher1.add(new Node(pg[2].width/20+ 42   *5, pg[2].height/10+ 9    *5)); //E
      polaLeher1.add(new Node(pg[2].width/20+ 43   *5, pg[2].height/10+ 10   *5)); //I
      polaLeher1.add(new Node(pg[2].width/20+ 44.5 *5, pg[2].height/10+ 10   *5)); //H
      polaLeher1.add(new Node(pg[2].width/20+ 38.5 *5, pg[2].height/10+ 10.5 *5)); //L
      polaLeher1.add(new Node(pg[2].width/20+ 23.5 *5, pg[2].height/10+ 10.5 *5)); //J
      polaLeher1.add(new Node(pg[2].width/20+ 8.5  *5, pg[2].height/10+ 10.5 *5)); //L
      polaLeher1.add(new Node(pg[2].width/20+ 2.5  *5, pg[2].height/10+ 10   *5)); //H
      polaLeher1.add(new Node(pg[2].width/20+ 4    *5, pg[2].height/10+ 10   *5)); //I
      polaLeher1.add(new Node(pg[2].width/20+ 5    *5, pg[2].height/10+ 9    *5)); //E
      polaLeher1.add(new Node(pg[2].width/20+ 0    *5, pg[2].height/10+ 3.5  *5)); //G
    
    }
    if (templateLeher==2) {//kerah Sport 
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-35, 240));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+35, 240));
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2, 215));
      
      leher2.add(new Node(pg[3].width/2-28, 235));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+28, 235));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2-20, 230));
      
    }
    if (templateLeher==3) { //kerah shanghay/tegak
      
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2+18, 213));
      leher1.add(new Node(pg[3].width/2+10, 222));
      leher1.add(new Node(pg[3].width/2+4, 225));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2-4, 225));
      leher1.add(new Node(pg[3].width/2-10, 222));
      leher1.add(new Node(pg[3].width/2-18, 213));
      leher1.add(new Node(pg[3].width/2-25, 220));
      
      leher2.add(new Node(pg[3].width/2-18, 213));
      leher2.add(new Node(pg[3].width/2-25, 220));
      leher2.add(new Node(pg[3].width/2-20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2+25, 220));
      leher2.add(new Node(pg[3].width/2+18, 213));
      leher2.add(new Node(pg[3].width/2, 210));
      
       
    }
     if (templateLeher==4) { //kerah shiller
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-35, 240));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+35, 240));
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2, 215));
     
      leher2.add(new Node(pg[3].width/2-28, 235));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+28, 235));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2-20, 230));
      
    }
    if(templateLeher==5){// kerah board terusan
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+35, 250));
      leher1.add(new Node(pg[3].width/2+18, 240));
      leher1.add(new Node(pg[3].width/2+20, 249));
      leher1.add(new Node(pg[3].width/2, 260));
      leher1.add(new Node(pg[3].width/2-20, 249));
      leher1.add(new Node(pg[3].width/2-18, 240));
      leher1.add(new Node(pg[3].width/2-35, 250));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-25, 220));
      
      leher2.add(new Node(pg[3].width/2-25, 220));
      leher2.add(new Node(pg[3].width/2-20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2+25, 220));
      leher2.add(new Node(pg[3].width/2, 215));
      
    }
    if(templateLeher==7){ //kerah kemeja m
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+10, 260));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2-10, 260));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2, 215));
      leher1.add(new Node(pg[3].width/2+25, 220));
    }
    if(templateLeher==8){//sport m
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-35, 240));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+35, 240));
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2, 215));
      
      leher2.add(new Node(pg[3].width/2-28, 235));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+28, 235));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2-20, 230));
    }
    if(templateLeher==9){// shanghay m
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2+18, 213));
      leher1.add(new Node(pg[3].width/2+10, 222));
      leher1.add(new Node(pg[3].width/2+4, 225));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2-4, 225));
      leher1.add(new Node(pg[3].width/2-10, 222));
      leher1.add(new Node(pg[3].width/2-18, 213));
      leher1.add(new Node(pg[3].width/2-25, 220));
      
      leher2.add(new Node(pg[3].width/2-18, 213));
      leher2.add(new Node(pg[3].width/2-25, 220));
      leher2.add(new Node(pg[3].width/2-20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2+25, 220));
      leher2.add(new Node(pg[3].width/2+18, 213));
      leher2.add(new Node(pg[3].width/2, 210));
    }
    if(templateLeher==10){// shiller m
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-35, 240));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+35, 240));
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2, 215));
     
      leher2.add(new Node(pg[3].width/2-28, 235));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+28, 235));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2-20, 230));
    }
    if(templateLeher==11){ //kemeja board terusan m
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+35, 250));
      leher1.add(new Node(pg[3].width/2+18, 240));
      leher1.add(new Node(pg[3].width/2+20, 249));
      leher1.add(new Node(pg[3].width/2, 260));
      leher1.add(new Node(pg[3].width/2-20, 249));
      leher1.add(new Node(pg[3].width/2-18, 240));
      leher1.add(new Node(pg[3].width/2-35, 250));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-25, 220));
      
      leher2.add(new Node(pg[3].width/2-25, 220));
      leher2.add(new Node(pg[3].width/2-20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2+25, 220));
      leher2.add(new Node(pg[3].width/2, 215));
    }
    if(templateLeher==13){ //kemeja l 
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+10, 260));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2-10, 260));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2, 215));
      leher1.add(new Node(pg[3].width/2+25, 220));
    }
    if(templateLeher==14){//sport l
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-35, 240));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+35, 240));
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2, 215));
      
      leher2.add(new Node(pg[3].width/2-28, 235));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+28, 235));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2-20, 230));
    }
    if(templateLeher==15){//shanghay l
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2+18, 213));
      leher1.add(new Node(pg[3].width/2+10, 222));
      leher1.add(new Node(pg[3].width/2+4, 225));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2-4, 225));
      leher1.add(new Node(pg[3].width/2-10, 222));
      leher1.add(new Node(pg[3].width/2-18, 213));
      leher1.add(new Node(pg[3].width/2-25, 220));
      
      leher2.add(new Node(pg[3].width/2-18, 213));
      leher2.add(new Node(pg[3].width/2-25, 220));
      leher2.add(new Node(pg[3].width/2-20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2+25, 220));
      leher2.add(new Node(pg[3].width/2+18, 213));
      leher2.add(new Node(pg[3].width/2, 210));
    }
    if(templateLeher==16){//shiller l
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-35, 240));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+35, 240));
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2, 215));
     
      leher2.add(new Node(pg[3].width/2-28, 235));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+28, 235));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2-20, 230));
    }
    if(templateLeher==17){//kemeja board terusan l
      leher1.add(new Node(pg[3].width/2-25, 220));
      leher1.add(new Node(pg[3].width/2-20, 230));
      leher1.add(new Node(pg[3].width/2, 240));
      leher1.add(new Node(pg[3].width/2+20, 230));
      leher1.add(new Node(pg[3].width/2+25, 220));
      leher1.add(new Node(pg[3].width/2+40, 230));
      leher1.add(new Node(pg[3].width/2+35, 250));
      leher1.add(new Node(pg[3].width/2+18, 240));
      leher1.add(new Node(pg[3].width/2+20, 249));
      leher1.add(new Node(pg[3].width/2, 260));
      leher1.add(new Node(pg[3].width/2-20, 249));
      leher1.add(new Node(pg[3].width/2-18, 240));
      leher1.add(new Node(pg[3].width/2-35, 250));
      leher1.add(new Node(pg[3].width/2-40, 230));
      leher1.add(new Node(pg[3].width/2-25, 220));
      
      leher2.add(new Node(pg[3].width/2-25, 220));
      leher2.add(new Node(pg[3].width/2-20, 230));
      leher2.add(new Node(pg[3].width/2, 240));
      leher2.add(new Node(pg[3].width/2+20, 230));
      leher2.add(new Node(pg[3].width/2+25, 220));
      leher2.add(new Node(pg[3].width/2, 215));
    }
    
    newProject = false; 
    base();
  }
}

void selectLengan() {
  if (templateLengan>0) {
    if (!newProject) {
      for (int i = lengan1.size()-1; i >= 0; i--)
        lengan1.remove(lengan1.get(i));
      for (int i = lengan2.size()-1; i >= 0; i--)
        lengan2.remove(lengan2.get(i));
      for (int i = lengan3.size()-1; i >= 0; i--)
        lengan3.remove(lengan3.get(i)); 
      for (int i = lengan4.size()-1; i >= 0; i--)
        lengan4.remove(lengan4.get(i));   
      for (int i = garisLengan.size()-1; i >= 0; i--)
        garisLengan.remove(garisLengan.get(i));
      for (int i = garisLengan2.size()-1; i >= 0; i--)
        garisLengan2.remove(garisLengan2.get(i));
      for (int i = polaLengan1.size()-1; i >= 0; i--)
        polaLengan1.remove(polaLengan1.get(i));
      for (int i = polaLengan2.size()-1; i >= 0; i--)
        polaLengan2.remove(polaLengan2.get(i));
      for (int i = polaLengan3.size()-1; i >= 0; i--)
        polaLengan3.remove(polaLengan3.get(i));
      for (int i = polaLengan4.size()-1; i >= 0; i--)
        polaLengan4.remove(polaLengan4.get(i));
      for (int i = polaLengan5.size()-1; i >= 0; i--)
        polaLengan5.remove(polaLengan5.get(i));
    }

    newProject = true;
    if (templateLengan==1) {//lengan gelembung pendek
      lengan1.add(new Node(pg[3].width/2-55, 240));//kiri
      lengan1.add(new Node(pg[3].width/2-45, 285));
      lengan1.add(new Node(pg[3].width/2-45, 300));
      lengan1.add(new Node(pg[3].width/2-55, 320));
      lengan1.add(new Node(pg[3].width/2-80, 300));
      lengan1.add(new Node(pg[3].width/2-83, 290));
      lengan1.add(new Node(pg[3].width/2-84, 270));
      lengan1.add(new Node(pg[3].width/2-70, 250));
      lengan1.add(new Node(pg[3].width/2-55, 240));
      
      lengan2.add(new Node(pg[3].width/2+55, 240));//kanan
      lengan2.add(new Node(pg[3].width/2+45, 285));
      lengan2.add(new Node(pg[3].width/2+45, 300));
      lengan2.add(new Node(pg[3].width/2+55, 320));
      lengan2.add(new Node(pg[3].width/2+80, 300));
      lengan2.add(new Node(pg[3].width/2+83, 290));
      lengan2.add(new Node(pg[3].width/2+84, 270));
      lengan2.add(new Node(pg[3].width/2+70, 250));
      lengan2.add(new Node(pg[3].width/2+55, 240));
 
      
      // LENGAN GELEMBUNG ATAS(PENDEK)
      polaLengan1.add(new Node(pg[2].width/20+(float)15.5*3, 280+0*3)); //F
      polaLengan1.add(new Node(pg[2].width/20+29*3, 280+3*3)); //O
      polaLengan1.add(new Node(pg[2].width/20+32*3, 280+25*3)); //D
      polaLengan1.add(new Node(pg[2].width/20+29*3, 280+47*3)); //N
      polaLengan1.add(new Node(pg[2].width/20+(float)15.5*3, 280+50*3)); //E
      polaLengan1.add(new Node(pg[2].width/20+(float)12*3, 280+43*3)); //3
      polaLengan1.add(new Node(pg[2].width/20+6*3, 280+36*3)); //2
      polaLengan1.add(new Node(pg[2].width/20+1*3, 280+29*3)); //1
      polaLengan1.add(new Node(pg[2].width/20+0*3, 280+25*3)); //A
      polaLengan1.add(new Node(pg[2].width/20+1*3, 280+21*3)); //1
      polaLengan1.add(new Node(pg[2].width/20+6*3, 280+14*3)); //2
      polaLengan1.add(new Node(pg[2].width/20+(float)12*3, 280+7*3)); //3

  //POLA BAN
      polaLengan2.add(new Node(pg[2].width/20+0*3+200, 300+0*3)); //A
      polaLengan2.add(new Node(pg[2].width/20+5*3+200, 300+0*3)); //B
      polaLengan2.add(new Node(pg[2].width/20+5*3+200, 300+32*3)); //C
      polaLengan2.add(new Node(pg[2].width/20+0*3+200, 300+32*3)); //D
    }
    if (templateLengan==2) { //lengan gelembung atas panjang
      lengan1.add(new Node(pg[3].width/2-55, 240));//kiri
      lengan1.add(new Node(pg[3].width/2-45, 285));
      lengan1.add(new Node(pg[3].width/2-45, 300));
      lengan1.add(new Node(pg[3].width/2-55, 320));
      lengan1.add(new Node(pg[3].width/2-65, 420));
      lengan1.add(new Node(pg[3].width/2-89, 420));
      lengan1.add(new Node(pg[3].width/2-80, 300));
      lengan1.add(new Node(pg[3].width/2-83, 290));
      lengan1.add(new Node(pg[3].width/2-84, 270));
      lengan1.add(new Node(pg[3].width/2-70, 250));
      //lengan2.add(new Node(pg[3].width/2+58, 250));
      lengan1.add(new Node(pg[3].width/2-55, 240));
      
      lengan2.add(new Node(pg[3].width/2+55, 240));//kanan
      lengan2.add(new Node(pg[3].width/2+45, 285));
      lengan2.add(new Node(pg[3].width/2+45, 300));
      lengan2.add(new Node(pg[3].width/2+55, 320));
      lengan2.add(new Node(pg[3].width/2+65, 420));
      lengan2.add(new Node(pg[3].width/2+89, 420));
      lengan2.add(new Node(pg[3].width/2+80, 300));
      lengan2.add(new Node(pg[3].width/2+83, 290));
      lengan2.add(new Node(pg[3].width/2+84, 270));
      lengan2.add(new Node(pg[3].width/2+70, 250));
      //lengan2.add(new Node(pg[3].width/2+58, 250));
      lengan2.add(new Node(pg[3].width/2+55, 240));
    }
    if (templateLengan==3) {//lengan licin pendek
      lengan1.add(new Node(pg[3].width/2-55, 240));//kiri
      lengan1.add(new Node(pg[3].width/2-45, 285));
      lengan1.add(new Node(pg[3].width/2-45, 300));
      lengan1.add(new Node(pg[3].width/2-55, 320));
      lengan1.add(new Node(pg[3].width/2-80, 300));
      lengan1.add(new Node(pg[3].width/2-55, 240));
      
      lengan2.add(new Node(pg[3].width/2+55, 240));//kanan
      lengan2.add(new Node(pg[3].width/2+45, 285));
      lengan2.add(new Node(pg[3].width/2+45, 300));
      lengan2.add(new Node(pg[3].width/2+55, 320));
      lengan2.add(new Node(pg[3].width/2+80, 300));
      lengan2.add(new Node(pg[3].width/2+55, 240));
    }
    if (templateLengan==4) {//lengan licin panjang
      lengan1.add(new Node(pg[3].width/2-55, 240));//kiri
      lengan1.add(new Node(pg[3].width/2-45, 285));
      lengan1.add(new Node(pg[3].width/2-45, 300));
      lengan1.add(new Node(pg[3].width/2-55, 320));
      lengan1.add(new Node(pg[3].width/2-65, 420));
      lengan1.add(new Node(pg[3].width/2-90, 420));
      lengan1.add(new Node(pg[3].width/2-80, 300));
      lengan1.add(new Node(pg[3].width/2-55, 240));
      
      lengan2.add(new Node(pg[3].width/2+55, 240));//kanan
      lengan2.add(new Node(pg[3].width/2+45, 285));
      lengan2.add(new Node(pg[3].width/2+45, 300));
      lengan2.add(new Node(pg[3].width/2+55, 320));
      lengan2.add(new Node(pg[3].width/2+65, 420));
      lengan2.add(new Node(pg[3].width/2+90, 420));
      lengan2.add(new Node(pg[3].width/2+80, 300));
      lengan2.add(new Node(pg[3].width/2+55, 240));
    }
    if (templateLengan==5) {//lengan gladde pendek
      lengan1.add(new Node(pg[3].width/2-45, 285));
      lengan1.add(new Node(pg[3].width/2-45, 300));
      lengan1.add(new Node(pg[3].width/2-55, 320));
      lengan1.add(new Node(pg[3].width/2-80, 300));
      lengan1.add(new Node(pg[3].width/2-55, 240));
      
      lengan2.add(new Node(pg[3].width/2+55, 240));//kanan
      lengan2.add(new Node(pg[3].width/2+45, 285));
      lengan2.add(new Node(pg[3].width/2+45, 300));
      lengan2.add(new Node(pg[3].width/2+55, 320));
      lengan2.add(new Node(pg[3].width/2+80, 300));
      lengan2.add(new Node(pg[3].width/2+55, 240));
      
      garisLengan.add(new Node(pg[3].width/2+53,315));
      garisLengan.add(new Node(pg[3].width/2+78,295));
      garisLengan2.add(new Node(pg[3].width/2-53,315));
      garisLengan2.add(new Node(pg[3].width/2-78,295));
      
      
    }
    if(templateLengan==6){ //lengan gladde panjang
      lengan1.add(new Node(pg[3].width/2-55, 240));//kiri
      lengan1.add(new Node(pg[3].width/2-45, 285));
      lengan1.add(new Node(pg[3].width/2-45, 300));
      lengan1.add(new Node(pg[3].width/2-55, 320));
      lengan1.add(new Node(pg[3].width/2-65, 420));
      lengan1.add(new Node(pg[3].width/2-90, 420));
      lengan1.add(new Node(pg[3].width/2-80, 300));
      lengan1.add(new Node(pg[3].width/2-55, 240));
      
      lengan2.add(new Node(pg[3].width/2+55, 240));//kanan
      lengan2.add(new Node(pg[3].width/2+45, 285));
      lengan2.add(new Node(pg[3].width/2+45, 300));
      lengan2.add(new Node(pg[3].width/2+55, 320));
      lengan2.add(new Node(pg[3].width/2+65, 420));
      lengan2.add(new Node(pg[3].width/2+90, 420));
      lengan2.add(new Node(pg[3].width/2+80, 300));
      lengan2.add(new Node(pg[3].width/2+55, 240));
      
      garisLengan.add(new Node(pg[3].width/2+65,415));
      garisLengan.add(new Node(pg[3].width/2+90,415));
      garisLengan2.add(new Node(pg[3].width/2-65,415));
      garisLengan2.add(new Node(pg[3].width/2-90,415));
      //lengan3.add(new Node(pg[3].width/2+55, 320));
      //lengan3.add(new Node(pg[3].width/2+55, 325));
      //lengan3.add(new Node(pg[3].width/2+80, 305));
      //lengan3.add(new Node(pg[3].width/2+80, 300));
      
      //lengan4.add(new Node(pg[3].width/2-55, 320));
      //lengan4.add(new Node(pg[3].width/2-55, 325));
      //lengan4.add(new Node(pg[3].width/2-80, 305));
      //lengan4.add(new Node(pg[3].width/2-80, 300));
    }
    if(templateLengan==7){//lengan gelembung pendek m
    
    }
    if(templateLengan==8){//lengan gelembung atas panjang m
    
    }
    if(templateLengan==9){//lengan licin m
    
    }
    if(templateLengan==10){//lengan licin panjang m
    
    }
    if(templateLengan==11){//lengan gladde pendek m
    
    }
    if(templateLengan==12){//lengan gladde panjang m
    
    }
    if(templateLengan==13){//lengan gelembung pendek l
    
    }
    if(templateLengan==14){//lengan gelembung atas panjang l
    
    }
    if(templateLengan==15){//lengan licin l
    
    }
    if(templateLengan==16){//lengan licin panjang l
    
    }
    if(templateLengan==17){//lengan gladde pendek l
    
    }
    if(templateLengan==18){//lengan gladde panjang l
    
    }
    newProject = false; 
    base();
  }
}

void selectLeherLk() {
  if (templateLeherlk>0) {
    if (!newProject) {
      for (int i = leherlk1.size()-1; i >= 0; i--)
        leherlk1.remove(leherlk1.get(i));
      for (int i = leherlk2.size()-1; i >= 0; i--)
        leherlk2.remove(leherlk2.get(i));
      for (int i = leherlk3.size()-1; i >= 0; i--)
        leherlk3.remove(leherlk3.get(i));  
      for (int i = garisLeherlk.size()-1; i >= 0; i--)
        garisLeherlk.remove(garisLeherlk.get(i));
      for (int i = garisLeherlk2.size()-1; i >= 0; i--)
        garisLeherlk2.remove(garisLeherlk2.get(i));
      for (int i = polaLeherlk1.size()-1; i >= 0; i--)
        polaLeherlk1.remove(polaLeherlk1.get(i));
      for (int i = polaLeherlk2.size()-1; i >= 0; i--)
        polaLeherlk2.remove(polaLeherlk2.get(i));
      for (int i = polaLeherlk3.size()-1; i >= 0; i--)
        polaLeherlk3.remove(polaLeherlk3.get(i));
      for (int i = polaLeherlk4.size()-1; i >= 0; i--)
        polaLeherlk4.remove(polaLeherlk4.get(i));
      for (int i = polaLeherlk5.size()-1; i >= 0; i--)
        polaLeherlk5.remove(polaLeherlk5.get(i));
    }

    newProject = true;
    if (templateLeherlk==1) {// kerah kemeja s
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+10, 260));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2-10, 260));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2, 215));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 4.5 *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 11.5 *3, 300+ 5   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *3, 300+ 5   *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 38   *3, 300+ 5   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 42   *3, 300+ 4.5 *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 43.5 *3, 300+ 3   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 42   *3, 300+ 9.5 *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 33.5 *3, 300+ 8.5 *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *3, 300+ 8.5 *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 14.5 *3, 300+ 8.5 *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 9.5 *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 300+ 3   *3)); //F
  
      //POLA KAKI KERAH
      polaLeherlk2.add(new Node(pg[2].width/20+ 14.5 *3, 350+ 5   *3)); //E
      polaLeherlk2.add(new Node(pg[2].width/20+ 23.5 *3, 350+ 5   *3)); //A
      polaLeherlk2.add(new Node(pg[2].width/20+ 33   *3, 350+ 5   *3)); //E
      polaLeherlk2.add(new Node(pg[2].width/20+ 43   *3, 350+ 2.5 *3)); //I
      polaLeherlk2.add(new Node(pg[2].width/20+ 45.5 *3, 350+ 4   *3)); //G
      polaLeherlk2.add(new Node(pg[2].width/20+ 43   *3, 350+ 5   *3)); //F
      polaLeherlk2.add(new Node(pg[2].width/20+ 33   *3, 350+ 8   *3)); //H
      polaLeherlk2.add(new Node(pg[2].width/20+ 23.5 *3, 350+ 8   *3)); //B
      polaLeherlk2.add(new Node(pg[2].width/20+ 14.5 *3, 350+ 8   *3)); //H
      polaLeherlk2.add(new Node(pg[2].width/20+ 5    *3, 350+ 5   *3)); //F
      polaLeherlk2.add(new Node(pg[2].width/20+ 3.5  *3, 350+ 4   *3)); //G
      polaLeherlk2.add(new Node(pg[2].width/20+ 5.5  *3, 350+ 2.5 *3)); //I
      
    }
    if (templateLeherlk==2) {//kerah sport s
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-35, 240));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+35, 240));
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2, 215));
      
      leherlk2.add(new Node(pg[3].width/2-28, 235));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+28, 235));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
      
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *3, 300+ 5    *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 42   *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 43.5 *3, 300+ 3.5  *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 42   *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 36   *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *3, 300+ 11   *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 11   *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 300+ 3.5  *3)); //G
    }
    if(templateLeherlk==3){//kerah Shanghay s
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2+18, 213));
      leherlk1.add(new Node(pg[3].width/2+10, 222));
      leherlk1.add(new Node(pg[3].width/2+4, 225));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2-4, 225));
      leherlk1.add(new Node(pg[3].width/2-10, 222));
      leherlk1.add(new Node(pg[3].width/2-18, 213));
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      
      leherlk2.add(new Node(pg[3].width/2-18, 213));
      leherlk2.add(new Node(pg[3].width/2-25, 220));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2+25, 220));
      leherlk2.add(new Node(pg[3].width/2+18, 213));
      leherlk2.add(new Node(pg[3].width/2, 210));
      
      polaLeherlk1.add(new Node(pg[2].width/20+ 14.5 *3, 350+ 5   *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *3, 350+ 5   *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 33   *3, 350+ 5   *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 43   *3, 350+ 2.5 *3)); //I
      polaLeherlk1.add(new Node(pg[2].width/20+ 45.5 *3, 350+ 4   *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 43   *3, 350+ 5   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 33   *3, 350+ 8   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *3, 350+ 8   *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 14.5 *3, 350+ 8   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 350+ 5   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 350+ 4   *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 5.5  *3, 350+ 2.5 *3)); //I
    }
    if(templateLeherlk==4){// kerah shiller s
       leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-35, 240));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+35, 240));
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2, 215));
     
      leherlk2.add(new Node(pg[3].width/2-28, 235));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+28, 235));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
      
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *3, 300+ 5    *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 42   *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 43.5 *3, 300+ 3.5  *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 42   *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 36   *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *3, 300+ 9.5   *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 11   *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 300+ 3.5  *3)); //G
    }
    if(templateLeherlk==5){// kerah kemeja boord terusan s
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+35, 250));
      leherlk1.add(new Node(pg[3].width/2+18, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 249));
      leherlk1.add(new Node(pg[3].width/2, 260));
      leherlk1.add(new Node(pg[3].width/2-20, 249));
      leherlk1.add(new Node(pg[3].width/2-18, 240));
      leherlk1.add(new Node(pg[3].width/2-35, 250));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      
      leherlk2.add(new Node(pg[3].width/2-25, 220));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2+25, 220));
      leherlk2.add(new Node(pg[3].width/2, 215));
      
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *5, 300+ 4.5  *5)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *5, 300+ 5    *5)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 42   *5, 300+ 4.5  *5)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 47   *5, 300+ 3.5  *5)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 42   *5, 300+ 9    *5)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 43   *5, 300+ 10   *5)); //I
      polaLeherlk1.add(new Node(pg[2].width/20+ 44.5 *5, 300+ 10   *5)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 38.5 *5, 300+ 10.5 *5)); //L
      polaLeherlk1.add(new Node(pg[2].width/20+ 23.5 *5, 300+ 10.5 *5)); //J
      polaLeherlk1.add(new Node(pg[2].width/20+ 8.5  *5, 300+ 10.5 *5)); //L
      polaLeherlk1.add(new Node(pg[2].width/20+ 2.5  *5, 300+ 10   *5)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 4    *5, 300+ 10   *5)); //I
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *5, 300+ 9    *5)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 0    *5, 300+ 3.5  *5)); //G
    }
    
    if(templateLeherlk==7){// kerah kemeja m
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+10, 260));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2-10, 260));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2, 215));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
          
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 4.5 *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 11.5 *3, 300+ 5   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *3, 300+ 5   *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 37.5 *3, 300+ 5   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 44   *3, 300+ 4.5 *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 45.5 *3, 300+ 3   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 44   *3, 300+ 9.5 *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 34.5 *3, 300+ 8.5 *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *3, 300+ 8.5 *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 15   *3, 300+ 8.5 *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 9.5 *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 300+ 3   *3)); //F

      //POLA KAKI KERAH
      polaLeherlk2.add(new Node(pg[2].width/20+ 15   *3, 350+ 5   *3)); //E
      polaLeherlk2.add(new Node(pg[2].width/20+ 24.5 *3, 350+ 5   *3)); //A
      polaLeherlk2.add(new Node(pg[2].width/20+ 34.5 *3, 350+ 5   *3)); //E
      polaLeherlk2.add(new Node(pg[2].width/20+ 45.5 *3, 350+ 2.5 *3)); //I
      polaLeherlk2.add(new Node(pg[2].width/20+ 46.5 *3, 350+ 4   *3)); //G
      polaLeherlk2.add(new Node(pg[2].width/20+ 45.5 *3, 350+ 5   *3)); //F
      polaLeherlk2.add(new Node(pg[2].width/20+ 34.5 *3, 350+ 8   *3)); //H
      polaLeherlk2.add(new Node(pg[2].width/20+ 24.5 *3, 350+ 8   *3)); //B
      polaLeherlk2.add(new Node(pg[2].width/20+ 15   *3, 350+ 8   *3)); //H
      polaLeherlk2.add(new Node(pg[2].width/20+ 5    *3, 350+ 5   *3)); //F
      polaLeherlk2.add(new Node(pg[2].width/20+ 3.5  *3, 350+ 4   *3)); //G
      polaLeherlk2.add(new Node(pg[2].width/20+ 5.5  *3, 350+ 2.5 *3)); //I
    }
    
    if(templateLeherlk==8){// kerah sport m
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-35, 240));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+35, 240));
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2, 215));
      
      leherlk2.add(new Node(pg[3].width/2-28, 235));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+28, 235));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
    
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *3, 300+ 5    *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 44   *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 45.5 *3, 300+ 3.5  *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 44   *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 37.5 *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *3, 300+ 11   *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 11.5 *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 300+ 3.5  *3)); //G
    }
    
    if(templateLeherlk==9){// kerah shanghay m
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2+18, 213));
      leherlk1.add(new Node(pg[3].width/2+10, 222));
      leherlk1.add(new Node(pg[3].width/2+4, 225));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2-4, 225));
      leherlk1.add(new Node(pg[3].width/2-10, 222));
      leherlk1.add(new Node(pg[3].width/2-18, 213));
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      
      leherlk2.add(new Node(pg[3].width/2-18, 213));
      leherlk2.add(new Node(pg[3].width/2-25, 220));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2+25, 220));
      leherlk2.add(new Node(pg[3].width/2+18, 213));
      leherlk2.add(new Node(pg[3].width/2, 210));
      
      polaLeherlk1.add(new Node(pg[2].width/20+ 15   *3, 350+ 5   *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *3, 350+ 5   *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 34.5 *3, 350+ 5   *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 45.5 *3, 350+ 2.5 *3)); //I
      polaLeherlk1.add(new Node(pg[2].width/20+ 46.5 *3, 350+ 4   *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 45.5 *3, 350+ 5   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 34.5 *3, 350+ 8   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *3, 350+ 8   *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 15   *3, 350+ 8   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 350+ 5   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 350+ 4   *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 5.5  *3, 350+ 2.5 *3)); //I

    }
    
    if(templateLeherlk==10){// kerah shiller m
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-35, 240));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+35, 240));
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2, 215));
     
      leherlk2.add(new Node(pg[3].width/2-28, 235));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+28, 235));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2-20, 230)); 
    
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *3, 300+ 5    *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 44   *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 45.5 *3, 300+ 3.5  *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 44   *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 37.5 *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *3, 300+ 9.5  *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 11.5 *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 300+ 3.5  *3)); //G
    }
    
    if(templateLeherlk==11){// kerah kemeja boord terusan m
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+35, 250));
      leherlk1.add(new Node(pg[3].width/2+18, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 249));
      leherlk1.add(new Node(pg[3].width/2, 260));
      leherlk1.add(new Node(pg[3].width/2-20, 249));
      leherlk1.add(new Node(pg[3].width/2-18, 240));
      leherlk1.add(new Node(pg[3].width/2-35, 250));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      
      leherlk2.add(new Node(pg[3].width/2-25, 220));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2+25, 220));
      leherlk2.add(new Node(pg[3].width/2, 215));
      
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *5, 300+ 4.5  *5)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *5, 300+ 5    *5)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 44   *5, 300+ 4.5  *5)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 49   *5, 300+ 3.5  *5)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 44   *5, 300+ 9    *5)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 45   *5, 300+ 10   *5)); //I
      polaLeherlk1.add(new Node(pg[2].width/20+ 46.5 *5, 300+ 10   *5)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 40   *5, 300+ 10.5 *5)); //L  
      polaLeherlk1.add(new Node(pg[2].width/20+ 24.5 *5, 300+ 10.5 *5)); //J
      polaLeherlk1.add(new Node(pg[2].width/20+ 9    *5, 300+ 10.5 *5)); //L
      polaLeherlk1.add(new Node(pg[2].width/20+ 2.5  *5, 300+ 10   *5)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 4    *5, 300+ 10   *5)); //I
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *5, 300+ 9    *5)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 0    *5, 300+ 3.5  *5)); //G
    }
    
    if(templateLeherlk==13){// kerah kemeja l
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+10, 260));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2-10, 260));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2, 215));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 4.5 *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 12   *3, 300+ 5   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *3, 300+ 5   *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 39   *3, 300+ 5   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *3, 300+ 4.5 *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 47.5 *3, 300+ 3   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *3, 300+ 9.5 *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 35   *3, 300+ 8.5 *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *3, 300+ 8.5 *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 15.5 *3, 300+ 8.5 *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 9.5 *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 300+ 3   *3)); //F

      //POLA KAKI KERAH
      polaLeherlk2.add(new Node(pg[2].width/20+ 15.5 *3, 350+ 5   *3)); //E
      polaLeherlk2.add(new Node(pg[2].width/20+ 25.5 *3, 350+ 5   *3)); //A
      polaLeherlk2.add(new Node(pg[2].width/20+ 35.5 *3, 350+ 5   *3)); //E
      polaLeherlk2.add(new Node(pg[2].width/20+ 46   *3, 350+ 2.5 *3)); //I
      polaLeherlk2.add(new Node(pg[2].width/20+ 47.5 *3, 350+ 4   *3)); //G
      polaLeherlk2.add(new Node(pg[2].width/20+ 46   *3, 350+ 5   *3)); //F
      polaLeherlk2.add(new Node(pg[2].width/20+ 35.5 *3, 350+ 8   *3)); //H
      polaLeherlk2.add(new Node(pg[2].width/20+ 25.5 *3, 350+ 8   *3)); //B
      polaLeherlk2.add(new Node(pg[2].width/20+ 15.5 *3, 350+ 8   *3)); //H
      polaLeherlk2.add(new Node(pg[2].width/20+ 5    *3, 350+ 5   *3)); //F
      polaLeherlk2.add(new Node(pg[2].width/20+ 3.5  *3, 350+ 4   *3)); //G
      polaLeherlk2.add(new Node(pg[2].width/20+ 5.5  *3, 350+ 2.5 *3)); //I
    }
    
    if(templateLeherlk==14){// kerah sport l
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-35, 240));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+35, 240));
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2, 215));
      
      leherlk2.add(new Node(pg[3].width/2-28, 235));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+28, 235));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
    
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *3, 300+ 5    *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 47.5 *3, 300+ 3.5  *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 38.5 *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *3, 300+ 11   *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 12.5 *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 300+ 3.5  *3)); //G
    }
    
    if(templateLeherlk==15){// kerah shanghay l
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2+18, 213));
      leherlk1.add(new Node(pg[3].width/2+10, 222));
      leherlk1.add(new Node(pg[3].width/2+4, 225));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2-4, 225));
      leherlk1.add(new Node(pg[3].width/2-10, 222));
      leherlk1.add(new Node(pg[3].width/2-18, 213));
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      
      leherlk2.add(new Node(pg[3].width/2-18, 213));
      leherlk2.add(new Node(pg[3].width/2-25, 220));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2+25, 220));
      leherlk2.add(new Node(pg[3].width/2+18, 213));
      leherlk2.add(new Node(pg[3].width/2, 210)); 
        
      polaLeherlk1.add(new Node(pg[2].width/20+ 15.5 *3, 350+ 5   *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *3, 350+ 5   *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 35.5 *3, 350+ 5   *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *3, 350+ 2.5 *3)); //I
      polaLeherlk1.add(new Node(pg[2].width/20+ 47.5 *3, 350+ 4   *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *3, 350+ 5   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 35.5 *3, 350+ 8   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *3, 350+ 8   *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 15.5 *3, 350+ 8   *3)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 350+ 5   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 350+ 4   *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 5.5  *3, 350+ 2.5 *3)); //I
    }
    
    if(templateLeherlk==16){// kerah shiller l
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-35, 240));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+35, 240));
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2, 215));
     
      leherlk2.add(new Node(pg[3].width/2-28, 235));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+28, 235));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2-20, 230));   
     
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *3, 300+ 5    *3)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *3, 300+ 4.5  *3)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 47.5 *3, 300+ 3.5  *3)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 38.5 *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *3, 300+ 9.5  *3)); //B
      polaLeherlk1.add(new Node(pg[2].width/20+ 12.5 *3, 300+ 11   *3)); //F
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *3, 300+ 9.5  *3)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 3.5  *3, 300+ 3.5  *3)); //G
    }
    
    if(templateLeherlk==17){// kerah kemeja boord terusan l
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      leherlk1.add(new Node(pg[3].width/2-20, 230));
      leherlk1.add(new Node(pg[3].width/2, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 230));
      leherlk1.add(new Node(pg[3].width/2+25, 220));
      leherlk1.add(new Node(pg[3].width/2+40, 230));
      leherlk1.add(new Node(pg[3].width/2+35, 250));
      leherlk1.add(new Node(pg[3].width/2+18, 240));
      leherlk1.add(new Node(pg[3].width/2+20, 249));
      leherlk1.add(new Node(pg[3].width/2, 260));
      leherlk1.add(new Node(pg[3].width/2-20, 249));
      leherlk1.add(new Node(pg[3].width/2-18, 240));
      leherlk1.add(new Node(pg[3].width/2-35, 250));
      leherlk1.add(new Node(pg[3].width/2-40, 230));
      leherlk1.add(new Node(pg[3].width/2-25, 220));
      
      leherlk2.add(new Node(pg[3].width/2-25, 220));
      leherlk2.add(new Node(pg[3].width/2-20, 230));
      leherlk2.add(new Node(pg[3].width/2, 240));
      leherlk2.add(new Node(pg[3].width/2+20, 230));
      leherlk2.add(new Node(pg[3].width/2+25, 220));
      leherlk2.add(new Node(pg[3].width/2, 215));
      
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *5, 300+ 4.5  *5)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *5, 300+ 5    *5)); //A
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *5, 300+ 4.5  *5)); //C
      polaLeherlk1.add(new Node(pg[2].width/20+ 51   *5, 300+ 3.5  *5)); //G
      polaLeherlk1.add(new Node(pg[2].width/20+ 46   *5, 300+ 9    *5)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 47   *5, 300+ 10   *5)); //I
      polaLeherlk1.add(new Node(pg[2].width/20+ 48.5 *5, 300+ 10   *5)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 41.5 *5, 300+ 10.5 *5)); //L  
      polaLeherlk1.add(new Node(pg[2].width/20+ 25.5 *5, 300+ 10.5 *5)); //J
      polaLeherlk1.add(new Node(pg[2].width/20+ 9.5  *5, 300+ 10.5 *5)); //L
      polaLeherlk1.add(new Node(pg[2].width/20+ 2.5  *5, 300+ 10   *5)); //H
      polaLeherlk1.add(new Node(pg[2].width/20+ 4    *5, 300+ 10   *5)); //I
      polaLeherlk1.add(new Node(pg[2].width/20+ 5    *5, 300+ 9    *5)); //E
      polaLeherlk1.add(new Node(pg[2].width/20+ 0    *5, 300+ 3.5  *5)); //G
    }
    
    newProject = false; 
    base();
  }
}

void selectLenganLk() {
  if (templateLenganlk>0) {
    if (!newProject) {
      for (int i = lenganlk1.size()-1; i >= 0; i--)
        lenganlk1.remove(lenganlk1.get(i));
      for (int i = lenganlk2.size()-1; i >= 0; i--)
        lenganlk2.remove(lenganlk2.get(i));
      for (int i = lenganlk3.size()-1; i >= 0; i--)
        lenganlk3.remove(lenganlk3.get(i));  
      for (int i = lenganlk4.size()-1; i >= 0; i--)
        lenganlk4.remove(lenganlk4.get(i));   
      for (int i = garisLenganlk.size()-1; i >= 0; i--)
        garisLenganlk.remove(garisLenganlk.get(i));
      for (int i = garisLenganlk2.size()-1; i >= 0; i--)
        garisLenganlk2.remove(garisLenganlk2.get(i));
      for (int i = polaLenganlk1.size()-1; i >= 0; i--)
        polaLenganlk1.remove(polaLenganlk1.get(i));
      for (int i = polaLenganlk2.size()-1; i >= 0; i--)
        polaLenganlk2.remove(polaLenganlk2.get(i));
      for (int i = polaLenganlk3.size()-1; i >= 0; i--)
        polaLenganlk3.remove(polaLenganlk3.get(i));
      for (int i = polaLenganlk4.size()-1; i >= 0; i--)
        polaLenganlk4.remove(polaLenganlk4.get(i));
      for (int i = polaLenganlk5.size()-1; i >= 0; i--)
        polaLenganlk5.remove(polaLenganlk5.get(i));
    }

    newProject = true;
    if (templateLenganlk==1) {//LENGAN LICIN PENDEK SIZE S
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 26   *2.5, 320+ 3    *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 26   *2.5, 320+ 35   *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 38   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 320+ 19   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 320+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 26   *2.5 +250, 320+ 3    *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 26   *2.5 +250, 320+ 35   *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 320+ 38   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 320+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 320+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 320+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +250, 320+ 19   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 320+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 320+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 320+ 5    *2.5)); //3
    }
    
    if (templateLenganlk==2) {//LENGAN LICIN PANJANG SIZE S
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-65, 420));
      lenganlk1.add(new Node(pg[3].width/2-90, 420));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+65, 420));
      lenganlk2.add(new Node(pg[3].width/2+90, 420));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 52   *2.5, 320+ 10.5 *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 52   *2.5, 320+ 27.5 *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 38   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 320+ 19   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 320+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 52   *2.5 +350, 320+ 10.5 *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 52   *2.5 +350, 320+ 27.5 *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 320+ 38   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 320+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 320+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 320+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +350, 320+ 19   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 320+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 320+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 320+ 5    *2.5)); //3
    }
    
    if (templateLenganlk==3) {//LENGAN GLADDE PENDEK SIZE S
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      lenganlk3.add(new Node(pg[3].width/2+55, 320));
      lenganlk3.add(new Node(pg[3].width/2+56, 325));
      lenganlk3.add(new Node(pg[3].width/2+81, 305));
      lenganlk3.add(new Node(pg[3].width/2+80, 300));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 30   *2.5, 300+ 2.5  *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 39   *2.5, 300+ 2.5  *2.5)); //P
      polaLenganlk1.add(new Node(pg[2].width/25+ 39   *2.5, 300+ 35.5 *2.5)); //Q
      polaLenganlk1.add(new Node(pg[2].width/25+ 30   *2.5, 300+ 35.5 *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 38   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 300+ 19   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 300+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 30   *2.5 +250, 300+ 2.5  *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 39   *2.5 +250, 300+ 2.5  *2.5)); //P
      polaLenganlk2.add(new Node(pg[2].width/25- 39   *2.5 +250, 300+ 35.5 *2.5)); //Q
      polaLenganlk2.add(new Node(pg[2].width/25- 30   *2.5 +250, 300+ 35.5 *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 300+ 38   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 300+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 300+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 300+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +250, 300+ 19   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 300+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 300+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 300+ 5    *2.5)); //3
    }
    
    if (templateLenganlk==4) {//LENGAN GLADDE PANJANG SIZE M
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      lenganlk3.add(new Node(pg[3].width/2+55, 320));
      lenganlk3.add(new Node(pg[3].width/2+56, 325));
      lenganlk3.add(new Node(pg[3].width/2+81, 305));
      lenganlk3.add(new Node(pg[3].width/2+80, 300));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 56   *2.5, 300+ 10   *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 65   *2.5, 300+ 10   *2.5)); //P
      polaLenganlk1.add(new Node(pg[2].width/25+ 65   *2.5, 300+ 28   *2.5)); //Q
      polaLenganlk1.add(new Node(pg[2].width/25+ 56   *2.5, 300+ 28   *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 38   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 300+ 19   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 300+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 56   *2.5 +350, 300+ 10   *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 65   *2.5 +350, 300+ 10   *2.5)); //P
      polaLenganlk2.add(new Node(pg[2].width/25- 65   *2.5 +350, 300+ 28   *2.5)); //Q
      polaLenganlk2.add(new Node(pg[2].width/25- 56   *2.5 +350, 300+ 28   *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 300+ 38   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 300+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 300+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 300+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +350, 300+ 19   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 300+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 300+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 300+ 5    *2.5)); //3
    }
    
    if(templateLenganlk==5){//LENGAN LICIN PENDEK SIZE M
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 28   *2.5, 320+ 3    *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 28   *2.5, 320+ 37   *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 40   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 320+ 20   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 320+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 28   *2.5 +250, 320+ 3    *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 28   *2.5 +250, 320+ 37   *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 320+ 40   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 320+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 320+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 320+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +250, 320+ 20   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 320+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 320+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 320+ 5    *2.5)); //3
    }
    
    if(templateLenganlk==6){//LENGAN LICIN PANJANG SIZE M
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-65, 420));
      lenganlk1.add(new Node(pg[3].width/2-90, 420));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+65, 420));
      lenganlk2.add(new Node(pg[3].width/2+90, 420));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 55   *2.5, 320+ 10.5 *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 55   *2.5, 320+ 29.5 *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 40   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 320+ 20   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 320+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 55   *2.5 +350, 320+ 10.5 *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 55   *2.5 +350, 320+ 29.5 *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 320+ 40   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 320+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 320+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 320+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +350, 320+ 20   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 320+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 320+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 320+ 5    *2.5)); //3
    }
    
    if(templateLenganlk==7){//LENGAN GLADDE PENDEK SIZE M
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      lenganlk3.add(new Node(pg[3].width/2+55, 320));
      lenganlk3.add(new Node(pg[3].width/2+56, 325));
      lenganlk3.add(new Node(pg[3].width/2+81, 305));
      lenganlk3.add(new Node(pg[3].width/2+80, 300));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 31   *2.5, 300+ 1.5  *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 40   *2.5, 300+ 1.5  *2.5)); //P
      polaLenganlk1.add(new Node(pg[2].width/25+ 40   *2.5, 300+ 36.5 *2.5)); //Q
      polaLenganlk1.add(new Node(pg[2].width/25+ 31   *2.5, 300+ 36.5 *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 38   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 300+ 19   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 300+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 31   *2.5 +250, 300+ 1.5  *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 40   *2.5 +250, 300+ 1.5  *2.5)); //P
      polaLenganlk2.add(new Node(pg[2].width/25- 40   *2.5 +250, 300+ 36.5 *2.5)); //Q
      polaLenganlk2.add(new Node(pg[2].width/25- 31   *2.5 +250, 300+ 36.5 *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 300+ 38   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 300+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 300+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 300+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +250, 300+ 19   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 300+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 300+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 300+ 5    *2.5)); //3
    }
    
    if(templateLenganlk==8){//LENGAN GLADDE PANJANG SIZE M
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      lenganlk3.add(new Node(pg[3].width/2+55, 320));
      lenganlk3.add(new Node(pg[3].width/2+56, 325));
      lenganlk3.add(new Node(pg[3].width/2+81, 305));
      lenganlk3.add(new Node(pg[3].width/2+80, 300));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 58   *2.5, 300+ 9    *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 67   *2.5, 300+ 9    *2.5)); //P
      polaLenganlk1.add(new Node(pg[2].width/25+ 67   *2.5, 300+ 29   *2.5)); //Q
      polaLenganlk1.add(new Node(pg[2].width/25+ 58   *2.5, 300+ 29   *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 38   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 300+ 19   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 300+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 58   *2.5 +350, 300+ 9    *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 67   *2.5 +350, 300+ 9    *2.5)); //P
      polaLenganlk2.add(new Node(pg[2].width/25- 67   *2.5 +350, 300+ 29   *2.5)); //Q
      polaLenganlk2.add(new Node(pg[2].width/25- 58   *2.5 +350, 300+ 29   *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 300+ 38   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 300+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 300+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 300+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +350, 300+ 19   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 300+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 300+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 300+ 5    *2.5)); //3
    }
    
    if(templateLenganlk==9){//LENGAN LICIN PENDEK SIZE L
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 30   *2.5, 320+ 3.5  *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 30   *2.5, 320+ 38.5 *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 40   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 320+ 20   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 320+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 30   *2.5 +250, 320+ 3.5  *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 30   *2.5 +250, 320+ 38.5 *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 320+ 40   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 320+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 320+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 320+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +250, 320+ 20   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 320+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 320+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 320+ 5    *2.5)); //3
    }
    
    if(templateLenganlk==10){//LENGAN LICIN PANJANG SIZE L
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-65, 420));
      lenganlk1.add(new Node(pg[3].width/2-90, 420));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+65, 420));
      lenganlk2.add(new Node(pg[3].width/2+90, 420));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 58   *2.5, 320+ 10.5 *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 58   *2.5, 320+ 31.5 *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 320+ 42   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 320+ 20   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 320+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 320+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 320+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 320+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 58   *2.5 +350, 320+ 10.5 *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 58   *2.5 +350, 320+ 31.5 *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 320+ 42   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 320+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 320+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 320+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +350, 320+ 20   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 320+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 320+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 320+ 5    *2.5)); //3
    }
    
    if(templateLenganlk==11){//LENGAN GLADDE PENDEK SIZE L
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      lenganlk3.add(new Node(pg[3].width/2+55, 320));
      lenganlk3.add(new Node(pg[3].width/2+56, 325));
      lenganlk3.add(new Node(pg[3].width/2+81, 305));
      lenganlk3.add(new Node(pg[3].width/2+80, 300));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 32   *2.5, 300+ 0.5  *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 41   *2.5, 300+ 0.5  *2.5)); //P
      polaLenganlk1.add(new Node(pg[2].width/25+ 41   *2.5, 300+ 37.5 *2.5)); //Q
      polaLenganlk1.add(new Node(pg[2].width/25+ 32   *2.5, 300+ 37.5 *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 38   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 300+ 19   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 300+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 32   *2.5 +250, 300+ 0.5  *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 41   *2.5 +250, 300+ 0.5  *2.5)); //P
      polaLenganlk2.add(new Node(pg[2].width/25- 41   *2.5 +250, 300+ 37.5 *2.5)); //Q
      polaLenganlk2.add(new Node(pg[2].width/25- 32   *2.5 +250, 300+ 37.5 *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +250, 300+ 38   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 300+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 300+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 300+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +250, 300+ 19   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +250, 300+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +250, 300+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +250, 300+ 5    *2.5)); //3
    }
    
    if(templateLenganlk==12){//LENGAN GLADDE PANJANG SIZE L
      lenganlk1.add(new Node(pg[3].width/2-55, 240));//kiri
      lenganlk1.add(new Node(pg[3].width/2-45, 285));
      lenganlk1.add(new Node(pg[3].width/2-45, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 320));
      lenganlk1.add(new Node(pg[3].width/2-80, 300));
      lenganlk1.add(new Node(pg[3].width/2-55, 240));
      
      lenganlk2.add(new Node(pg[3].width/2+55, 240));//kanan
      lenganlk2.add(new Node(pg[3].width/2+45, 285));
      lenganlk2.add(new Node(pg[3].width/2+45, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 320));
      lenganlk2.add(new Node(pg[3].width/2+80, 300));
      lenganlk2.add(new Node(pg[3].width/2+55, 240));
      
      lenganlk3.add(new Node(pg[3].width/2+55, 320));
      lenganlk3.add(new Node(pg[3].width/2+56, 325));
      lenganlk3.add(new Node(pg[3].width/2+81, 305));
      lenganlk3.add(new Node(pg[3].width/2+80, 300));
      
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 0    *2.5)); //F
      polaLenganlk1.add(new Node(pg[2].width/25+ 60   *2.5, 300+ 8    *2.5)); //O
      polaLenganlk1.add(new Node(pg[2].width/25+ 69   *2.5, 300+ 8    *2.5)); //P
      polaLenganlk1.add(new Node(pg[2].width/25+ 69   *2.5, 300+ 30   *2.5)); //Q
      polaLenganlk1.add(new Node(pg[2].width/25+ 60   *2.5, 300+ 30   *2.5)); //N
      polaLenganlk1.add(new Node(pg[2].width/25+ 12.5 *2.5, 300+ 38   *2.5)); //E
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 33   *2.5)); //3
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 28   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 23   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 0    *2.5, 300+ 19   *2.5)); //A
      polaLenganlk1.add(new Node(pg[2].width/25+ 1    *2.5, 300+ 15   *2.5)); //1
      polaLenganlk1.add(new Node(pg[2].width/25+ 5    *2.5, 300+ 10   *2.5)); //2
      polaLenganlk1.add(new Node(pg[2].width/25+ 9.5  *2.5, 300+ 5    *2.5)); //3
      
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 300+ 0    *2.5)); //F
      polaLenganlk2.add(new Node(pg[2].width/25- 60   *2.5 +350, 300+ 8    *2.5)); //O
      polaLenganlk2.add(new Node(pg[2].width/25- 69   *2.5 +350, 300+ 8    *2.5)); //P
      polaLenganlk2.add(new Node(pg[2].width/25- 69   *2.5 +350, 300+ 30   *2.5)); //Q
      polaLenganlk2.add(new Node(pg[2].width/25- 60   *2.5 +350, 300+ 30   *2.5)); //N
      polaLenganlk2.add(new Node(pg[2].width/25- 12.5 *2.5 +350, 300+ 38   *2.5)); //E
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 300+ 33   *2.5)); //3
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 300+ 28   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 300+ 23   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 0    *2.5 +350, 300+ 19   *2.5)); //A
      polaLenganlk2.add(new Node(pg[2].width/25- 1    *2.5 +350, 300+ 15   *2.5)); //1
      polaLenganlk2.add(new Node(pg[2].width/25- 5    *2.5 +350, 300+ 10   *2.5)); //2
      polaLenganlk2.add(new Node(pg[2].width/25- 9.5  *2.5 +350, 300+ 5    *2.5)); //3
    }
    
    newProject = false; 
    base();
  }
}

void mouseMoved() {
  for (int i=0; i<menuList.length; i++)
    if (menuList[i].menuOpen)
      menuList[i].selectedLineFromMouse();
}

void mousePressed() {
  int menuResult = -1;  
  for (int i=0; i<menuList.length; i++) {
    menuResult = menuList[i].clicked();
    if (menuResult!=-1) {
      evalMenu(menuResult);
      return;
    }
  }

  if (mouseY<25 && mouseX>width-40)
    exit();

  if (pgRok) {
    int c2d=1;
    for (int i=1; i<=23; i++) {
      if (c2d>=imgRok.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=4; j++) {
        if (c2d>imgRok.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          rok = true;
          atasanlk = false;
          celanalk = false;
          leherlk = false;
          lenganlk = false;
          gaun = false;
          templateRok = c2d;
          selectRok();          
          newProject = false;
          celana = false;
          break;
        }
        c2d++;
      }
    }
  } else if (pgAtasan) {
    int c2d=1;
    for (int i=1; i<=8; i++) {
      if (c2d>=imgAtasan.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=3; j++) {
        if (c2d>imgAtasan.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          atasan = true;
          atasanlk = false;
          celanalk = false;
          leherlk = false;
          lenganlk = false;
          gaun = false;
          templateAtasan = c2d;
          selectAtasan();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
   } else if (pgLengan) {
    int c2d=1;
    for (int i=1; i<=17; i++) {
      if (c2d>=imgLengan.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=3; j++) {
        if (c2d>imgLengan.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          lengan = true;
          lenganlk = false;
          atasanlk = false;
          celanalk = false;
          leherlk = false;
          templateLengan = c2d;
          selectLengan();          
          newProject = false;
          break;
        }
        c2d++;
      }
    } 
   }else if (pgLenganLk) {
    int c2d=1;
    for (int i=1; i<=11; i++) {
      if (c2d>=imgLenganLk.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=4; j++) {
        if (c2d>imgLenganLk.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          lengan = false;
          lenganlk = true;
          atasan = false;
          celana = false;
          leher = false;
          gaun = false;
          rok = false;
          templateLenganlk = c2d;
          selectLenganLk();          
          newProject = false;
          break;
        }
        c2d++;
      }
    } 
  } else if (pgLeher) {
    int c2d=1;
    for (int i=1; i<=17; i++) {
      if (c2d>=imgLeher.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=3; j++) {
        if (c2d>imgLeher.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          leher = true;
          leherlk = false;
          atasanlk = false;
          celanalk = false;
          lenganlk = false;
          templateLeher = c2d;
          selectLeher();          
          newProject = false;
          break;
        }
        c2d++;
      }
    } 
     } else if (pgLeherLk) {
    int c2d=1;
    for (int i=1; i<=17; i++) {
      if (c2d>=imgLeherLk.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=3; j++) {
        if (c2d>imgLeherLk.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          leher = false;
          leherlk = true;
          rok = false;
          atasan =false;
          gaun = false;
          celana = false;
          lengan = false;
          templateLeherlk = c2d;
          selectLeherLk();          
          newProject = false;
          break;
        }
        c2d++;
      }
    } 
  } else if (pgGaun) {
    int c2d=1;
    for (int i=1; i<=9; i++) {
      if (c2d>=imgGaun.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=6; j++) {
        if (c2d>imgGaun.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          gaun = true;
          rok = false;
          celana = false;
          atasan = false;
          atasanlk = false;
          celanalk = false;
          lenganlk = false;
          leherlk = false;
          templateGaun = c2d;
          selectGaun();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  } else if (pgCelana) {
    int c2d=1;
    for (int i=1; i<=5; i++) {
      if (c2d>=imgCelana.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=2; j++) {
        if (c2d>imgCelana.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          celana = true;
          rok = false;
          gaun = false;
          celanalk = false;
          atasanlk = false;
          leherlk = false;
          lenganlk = false;
          templateCelana = c2d;
          selectCelana();          
          newProject = false;
          break;
        }
        c2d++;
      }
    } 
  } else if (pgAtasanLk) {
    int c2d=1;
    for (int i=1; i<=7; i++) {
      if (c2d>=imgAtasanLk.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=2; j++) {
        if (c2d>imgAtasanLk.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          atasanlk = true;
          atasan = false;
          rok  = false;
          gaun = false;
          lengan = false;
          leher = false;
          celana = false;
          templateAtasanlk = c2d;
          selectAtasanlk();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  } else if (pgCelanaLk) {
    int c2d=1;
    for (int i=1; i<=5; i++) {
      if (c2d>=imgCelanaLk.length-1) {
        c2d=1;
        break;
      }
      for (int j=1; j<=2; j++) {
        if (c2d>imgCelanaLk.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          celanalk = true;
          rok = false;
          gaun = false;
          celana = false;
          atasan = false;
          lengan = false;
          leher = false;
          templateCelanalk = c2d;
          selectCelanalk();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  } else if (pgTex1) {
    int c=1;
    for (int i=1; i<=9; i++) {
      if (c>=imgtex1.length-1) {
        c=1;
        break;
      }
      for (int j=1; j<=6; j++) {
        if (c>imgtex1.length-1)
          break;
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          citraKain = true;
          imageTexture = imgtex1[c];
          urlTexture = urlTex1[c];
        }
        c++;
      }
    }
  } else if (pgTex2) {
    int c=1;
    for (int i=1; i<=9; i++) {
      if (c>=imgtex2.length-1) {
        c=1;
        break;
      }
      for (int j=1; j<=6; j++) {
        if (c>imgtex2.length-1) {
          break;
        }
        if (mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
          && mouseY-25<i*75+50 && mouseY-25>i*75) {
          citraKain = true;
          imageTexture = imgtex2[c];
          urlTexture = urlTex2[c];
        }
        c++;
      }
    }
  }
}

void drawPgAction(){
  pg[10].beginDraw();
  pg[10].beginDraw();
  pg[10].background(200);
  pg[10].textSize(16);
  pg[10].text("Pola yang Anda Pilih :",15,25);
  pg[10].fill(0);
  if(templateAtasan==1){
    pg[10].text("- Pola Baju Tanpa Bukaan S",15,50);
  }
  else if(templateAtasan==2){
    pg[10].text("- Pola Baju Bukaan Depan S",15,50);
  }
  else if(templateAtasan==3){
    pg[10].text("- Pola Baju Bukaan Belakang S",15,50);
  }
  else if(templateAtasan==4){
    pg[10].text("- Pola Baju Tanpa Bukaan M",15,50);
  }
  else if(templateAtasan==5){
    pg[10].text("- Pola Baju Bukaan Depan M",15,50);
  }
  else if(templateAtasan==6){
    pg[10].text("- Pola Baju Bukaan Belakang M",15,50);
  }
  else if(templateAtasan==7){
    pg[10].text("- Pola Baju Tanpa Bukaan L",15,50);
  }
  else if(templateAtasan==8){
    pg[10].text("- Pola Baju Bukaan Depan L",15,50);
  }
  else if(templateAtasan==9){
    pg[10].text("- Pola Baju Bukaan Belakang L",15,50);
  }
  
  if(templateLeher==1){
    pg[10].text("- Kerah Kemeja S",15,75);
  }
  else if(templateLeher==2){
    pg[10].text("- Kerah Sport S",15,75);
  }
  else if(templateLeher==3){
    pg[10].text("- Kerah Sanghay S",15,75);
  }
  else if(templateLeher==4){
    pg[10].text("- Kerah Shiller S",15,75);
  }
  else if(templateLeher==5){
    pg[10].text("- Kerah Kemeja Boord Terusan S",15,75);
  }
  else if(templateLeher==7){
    pg[10].text("- Kerah Kemeja M",15,75);
  }
  else if(templateLeher==8){
    pg[10].text("- Kerah Sport M",15,75);
  }
  else if(templateLeher==9){
    pg[10].text("- Kerah Sanghay M",15,75);
  }
  else if(templateLeher==10){
    pg[10].text("- Kerah Shiller M",15,75);
  }
  else if(templateLeher==11){
    pg[10].text("- Kerah Kemeja Boord Terusan M",15,75);
  }
  else if(templateLeher==13){
    pg[10].text("- Kerah Kemeja L",15,75);
  }
  else if(templateLeher==14){
    pg[10].text("- Kerah Sport L",15,75);
  }
  else if(templateLeher==15){
    pg[10].text("- Kerah Sanghay L",15,75);
  }
  else if(templateLeher==16){
    pg[10].text("- Kerah Shiller L",15,75);
  }
  else if(templateLeher==17){
    pg[10].text("- Kerah Kemeja Boord Terusan L",15,75);
  }
  
  if(templateLengan==1){
    pg[10].text("- Pola Lengan Gelembung pendek S",15,100);
  }
  else if(templateLengan==2){
    pg[10].text("- Pola Lengan Gelembung atas Panjang S",15,100);
  }
  else if(templateLengan==3){
    pg[10].text("- Pola Lengan Licin pendek S",15,100);
  }
  else if(templateLengan==4){
    pg[10].text("- Pola Lengan Licin Panjang S",15,100);
  }
  else if(templateLengan==5){
    pg[10].text("- Pola Lengan Gladde pendek S",15,100);
  }
  else if(templateLengan==6){
    pg[10].text("- Pola Lengan Gladde panjang S",15,100);
  }
  else if(templateLengan==7){
    pg[10].text("- Pola Lengan Gelembung pendek M",15,100);
  }
  else if(templateLengan==8){
    pg[10].text("- Pola Lengan Gelembung atas Panjang M",15,100);
  }
  else if(templateLengan==9){
    pg[10].text("- Pola Lengan Licin pendek M",15,100);
  }
  else if(templateLengan==10){
    pg[10].text("- Pola Lengan Licin Panjang M",15,100);
  }
  else if(templateLengan==11){
    pg[10].text("- Pola Lengan Gladde pendek M",15,100);
  }
  else if(templateLengan==12){
    pg[10].text("- Pola Lengan Gladde panjang M",15,100);
  }
  else if(templateLengan==13){
    pg[10].text("- Pola Lengan Gelembung pendek L",15,100);
  }
  else if(templateLengan==14){
    pg[10].text("- Pola Lengan Gelembung atas Panjang L",15,100);
  }
  else if(templateLengan==15){
    pg[10].text("- Pola Lengan Licin pendek L",15,100);
  }
  else if(templateLengan==16){
    pg[10].text("- Pola Lengan Licin Panjang L",15,100);
  }
  else if(templateLengan==17){
    pg[10].text("- Pola Lengan Gladde pendek L",15,100);
  }
  else if(templateLengan==18){
    pg[10].text("- Pola Lengan Gladde panjang L",15,100);
  }
  
  if(templateRok==1){
    pg[10].text("- Pola Rok Standar pendek S",15,125);
  }
  else if(templateRok==2){
    pg[10].text("- Pola Rok Standar Panjang S",15,125);
  }
  else if(templateRok==3){
    pg[10].text("- Pola Rok Span S",15,125);
  }
  else if(templateRok==4){
    pg[10].text("- Pola Rok Span 2 Kumpat S",15,125);
  }
  else if(templateRok==5){
    pg[10].text("- Pola Rok Lipit Hadap I S",15,125);
  }
  else if(templateRok==6){
    pg[10].text("- Pola Rok Lipit Hadap II S",15,125);
  }
  else if(templateRok==7){
    pg[10].text("- Pola Rok Lipit Hadap III S",15,125);
  }
  else if(templateRok==9){
    pg[10].text("- Pola Rok Standar pendek M",15,125);
  }
  else if(templateRok==10){
    pg[10].text("- Pola Rok Standar Panjang M",15,125);
  }
  else if(templateRok==11){
    pg[10].text("- Pola Rok Span M",15,125);
  }
  else if(templateRok==12){
    pg[10].text("- Pola Rok Span 2 Kumpat M",15,125);
  }
  else if(templateRok==13){
    pg[10].text("- Pola Rok Lipit Hadap I M",15,125);
  }
  else if(templateRok==14){
    pg[10].text("- Pola Rok Lipit Hadap II M",15,125);
  }
  else if(templateRok==15){
    pg[10].text("- Pola Rok Lipit Hadap III M",15,125);
  }
  else if(templateRok==17){
    pg[10].text("- Pola Rok Standar pendek L",15,125);
  }
  else if(templateRok==18){
    pg[10].text("- Pola Rok Standar Panjang L",15,125);
  }
  else if(templateRok==19){
    pg[10].text("- Pola Rok Span L",15,125);
  }
  else if(templateRok==20){
    pg[10].text("- Pola Rok Span 2 Kumpat L",15,125);
  }
  else if(templateRok==21){
    pg[10].text("- Pola Rok Lipit Hadap I L",15,125);
  }
  else if(templateRok==22){
    pg[10].text("- Pola Rok Lipit Hadap II L",15,125);
  }
  else if(templateRok==23){
    pg[10].text("- Pola Rok Lipit Hadap III L",15,125);
  }
  
  if(templateGaun==1){
    pg[10].text("- Pola Gaun Bukaan Depan Pendek M",15,150);
  }
  else if(templateGaun==2){
    pg[10].text("- Pola Gaun Bukaan Belakang Pendek M",15,150);
  }
  else if(templateGaun==3){
    pg[10].text("- Pola Gaun Bukaan Depan Panjang M",15,150);
  }
  else if(templateGaun==4){
    pg[10].text("- Pola Gaun Bukaan Belakang Panjang M",15,150);
  }
  else if(templateGaun==5){
    pg[10].text("- Pola Gaun Bukaan Depan Pendek M",15,150);
  }
  else if(templateGaun==6){
    pg[10].text("- Pola Gaun Bukaan Belakang Pendek M",15,150);
  }
  else if(templateGaun==7){
    pg[10].text("- Pola Gaun Bukaan Depan Panjang M",15,150);
  }
  else if(templateGaun==8){
    pg[10].text("- Pola Gaun Bukaan Belakang Panjang M",15,150);
  }
  else if(templateGaun==9){
    pg[10].text("- Pola Gaun Bukaan Depan Pendek L",15,150);
  }
  else if(templateGaun==10){
    pg[10].text("- Pola Gaun Bukaan Belakang Pendek L",15,150);
  }
  else if(templateGaun==11){
    pg[10].text("- Pola Gaun Bukaan Depan Panjang L",15,150);
  }
  else if(templateGaun==12){
    pg[10].text("- Pola Gaun Bukaan Belakang Panjang L",15,150);
  }
  
  pg[10].stroke(0);
  pg[10].endDraw();
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == CONTROL) 
      controlDown = true;
    if (keyCode == SHIFT)
      shiftDown = true;
    return;
  }

  if (key=='g')      showGrid();
  if (key=='s' || key=='S')      saveProject();
  if (key=='n' || key=='N')      newProject();
  if (key=='o' || key=='O')      openProject();
  if (key=='q' || key=='Q')      exit();
  if (key=='w' || key=='W')      pg[3].save("/SS/SS3D.jpg");
  if (key=='v' || key=='V')      pg[2].save("/SS/SS2D.jpg");
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == CONTROL)
      controlDown = false;
    if (keyCode == SHIFT)
      shiftDown = false;
  }
}

void evalMenu(int menuResult1) {
  switch(menuResult1) {
  case 0: 
    print("\nNew Project");
    newProject();
    break; 
  case 1:
    print("\nOpen");
    openProject();
    base();
   
    break; 
  case 2:
    print("\nSave");
    saveProject();
    break;
  case 3:
    print("\nTutorial");
    pgTex1 = false;
    pgTex2 = false;
    pgRok = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgTutor = true;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;
  case 4:
    print("\nClose");
    exit();
    break;

  case 100: 
    print("\nWanita");
    pgTex1 = false;
    pgTex2 = false;
    pgUkuranW = true;
    pgUkuranP = false;
    pgRok = false;
    pgTutor = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    break;
  case 101: 
    print("\nPria");
    pgTex1 = false;
    pgTex2 = false;
    pgUkuranW = false;
    pgUkuranP = true;
    pgRok = false;
    pgTutor = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    break;
  case 102: 
    print("\nShow Grid");
    showGrid();
    break;

  case 200: 
    print("\nBadan");
    pgTex1 = false;
    pgTex2 = false;
    pgTutor = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgRok = false;
    pgAtasan = true;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;
    
   case 201: 
    print("\nLeher");
    pgTex1 = false;
    pgTex2 = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgLeher = true;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;
    
  case 202: 
    print("\nLengan");
    pgTex1 = false;
    pgTex2 = false;
    pgTutor = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgRok = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = true;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;

  case 203: 
    print("\nRok");
    pgTex1 = false;
    pgTex2 = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgTutor = false;
    pgRok = true;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;

  case 204: 
    print("\nGaun");
    pgTex1 = false;
    pgTex2 = false;
    pgTutor = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgRok = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = true;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;

  case 205: 
    print("\nCelana");
    pgTex1 = false;
    pgTex2 = false;
    pgTutor = false;
    pgRok = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = true;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;

  case 300: 
    print("\nBadan");
    pgTex1 = false;
    pgTex2 = false;
    pgTutor = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgRok = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = true;
    pgCelanaLk = false;
    break;
    
  case 301: 
    print("\nLeher");
    pgTex1 = false;
    pgTex2 = false;
    pgTutor = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgRok = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = true;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;
    
  case 302: 
    print("\nLengan");
    pgTex1 = false;
    pgTex2 = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = true;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;

  case 303: 
    print("\nCelana");
    pgTex1 = false;
    pgTex2 = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = true;
    break;

  case 400: 
    print("\nTekstur 1");
    pgTex1 = true;
    pgTex2 = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    setPgTexture(imgtex1);
    break; 
  case 401:
    print("\nTekstur 2");
    pgTex1 = false;
    pgTex2 = true;
    pgTutor = false;
    pgUkuranW = false;
    pgUkuranP = false;
    pgRok = false;
    pgLeher = false;
    pgLengan = false;
    pgLeherLk = false;
    pgLenganLk = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    setPgTexture(imgtex2);
    break; 

  case -1:
    break;
  default:
    // ERROR 
    println ("\nError 277 with " + menuResult1);
    exit();
    break;
  }
}

void showGrid() {
  if (!grid2D) grid2D = true;
  else grid2D = false;
}

void saveProject() {
  File defaultFileName = new File(sketchPath("")+"/Saved Projects"+"/Project.txt");
  selectOutput("Save Project as: ", "fileSelectedForSave", defaultFileName);
}

void drawPgMenuBar() {
  pg[1].beginDraw();
  pg[1].background(25);
  pg[1].fill(0xffD30F0F);
  pg[1].rect(width-40, 0, width, pg[1].height);
  pg[1].stroke(255);
  pg[1].line(width-25, 8, width-15, 17);
  pg[1].line(width-25, 17, width-15, 8);
  pg[1].endDraw();
}

void drawPgVisualisasiPola() {
  pg[2].beginDraw();
  pg[2].background(200);
  if (grid2D) {
    pg[2].strokeWeight(1);
    pg[2].stroke(135);
    int i=0;
    while (i<=pg[2].width) {
      pg[2].line(i, 0, i, pg[2].height);
      i+=25;
    }
    int j=0;
    while (j<=pg[2].height) {
      pg[2].line(0, j, width, j);
      j+=25;
    }
  }
  pg[2].stroke(255);
  pg[2].strokeWeight(1);
  pg[2].endDraw();
}

public void drawPgVisualisasiBusana() {
  pg[3].beginDraw();
  pg[3].background(100);
  pg[3].textSize(18);
  pg[3].stroke(255);
  pg[3].text("Rancangan Busana", 25, 50);
  pg[3].strokeWeight(1);
  pg[3].noFill();
  pg[3].curve(pg[3].width/2+50, 50, pg[3].width/2+50, 50, pg[3].width/2+20, 150, pg[3].width/2-40, 180);
  pg[3].curve(pg[3].width/2+50, 50, pg[3].width/2+20, 150, pg[3].width/2-40, 180, pg[3].width/2-50, 200);
  pg[3].curve(pg[3].width/2+20, 150, pg[3].width/2-40, 180, pg[3].width/2-50, 200, pg[3].width/2-50, 200);
  pg[3].line(pg[3].width/2, 150, pg[3].width/2, 400);

  pg[3].line(pg[3].width/2-10, 200, pg[3].width/2-10, 160);
  pg[3].line(pg[3].width/2+10, 200, pg[3].width/2+10, 160);
  pg[3].line(pg[3].width/2-10, 200, pg[3].width/2+10, 200); //leher
  pg[3].line(pg[3].width/2-10, 200, pg[3].width/2-60, 220);
  pg[3].line(pg[3].width/2+10, 200, pg[3].width/2+60, 220);

  pg[3].line(pg[3].width/2-60, 220, pg[3].width/2+60, 220);
  pg[3].line(pg[3].width/2-55, 250, pg[3].width/2+55, 250);
  pg[3].line(pg[3].width/2-50, 270, pg[3].width/2+50, 270);
  pg[3].line(pg[3].width/2-35, 340, pg[3].width/2+35, 340); //pinggang atas
  pg[3].line(pg[3].width/2-60, 220, pg[3].width/2-35, 340);
  pg[3].line(pg[3].width/2+60, 220, pg[3].width/2+35, 340);

  pg[3].line(pg[3].width/2-60, 220, pg[3].width/2-85, 320); //lengan atas
  pg[3].line(pg[3].width/2-50, 270, pg[3].width/2-65, 320); 
  pg[3].line(pg[3].width/2-85, 320, pg[3].width/2-80, 400); //lengan bawah
  pg[3].line(pg[3].width/2-65, 320, pg[3].width/2-70, 400);
  pg[3].line(pg[3].width/2-80, 400, pg[3].width/2-85, 410); //telapak
  pg[3].line(pg[3].width/2-85, 410, pg[3].width/2-75, 440); 
  pg[3].line(pg[3].width/2-70, 400, pg[3].width/2-65, 410);
  pg[3].line(pg[3].width/2-65, 410, pg[3].width/2-75, 440); //
  pg[3].line(pg[3].width/2+60, 220, pg[3].width/2+85, 320); //lengan atas
  pg[3].line(pg[3].width/2+50, 270, pg[3].width/2+65, 320); 
  pg[3].line(pg[3].width/2+85, 320, pg[3].width/2+80, 400); //lengan bawah
  pg[3].line(pg[3].width/2+65, 320, pg[3].width/2+70, 400);
  pg[3].line(pg[3].width/2+80, 400, pg[3].width/2+85, 410); //telapak
  pg[3].line(pg[3].width/2+85, 410, pg[3].width/2+75, 440); 
  pg[3].line(pg[3].width/2+70, 400, pg[3].width/2+65, 410);
  pg[3].line(pg[3].width/2+65, 410, pg[3].width/2+75, 440);

  pg[3].line(pg[3].width/2-50, 400, pg[3].width/2+50, 400); //pinggang bawah
  pg[3].line(pg[3].width/2-35, 340, pg[3].width/2-50, 400);
  pg[3].line(pg[3].width/2+35, 340, pg[3].width/2+50, 400);

  pg[3].line(pg[3].width/2-25, 400, pg[3].width/2-35, 720); 
  pg[3].line(pg[3].width/2+25, 400, pg[3].width/2+35, 720);
  pg[3].line(pg[3].width/2-25, 700, pg[3].width/2-45, 700);
  pg[3].line(pg[3].width/2+25, 700, pg[3].width/2+45, 700);

  pg[3].line(pg[3].width/2-50, 400, pg[3].width/2-45, 700);
  pg[3].line(pg[3].width/2-5, 400, pg[3].width/2-25, 700);
  pg[3].line(pg[3].width/2+5, 400, pg[3].width/2+25, 700);
  pg[3].line(pg[3].width/2+50, 400, pg[3].width/2+45, 700);
  pg[3].endDraw();
}

void setPgTexture(PImage imgtex[]) {
  for (int i=1; i<=5; i++) {
    pg[i+3].beginDraw();
    pg[i+3].background(255);
    pg[i+3].fill(0);
    pg[i+3].textSize(28);
    pg[i+3].text("Tekstur", 25, 50);
    int c = 1;
    for (int j=1; j<=9; j++) {
      if (c>=imgtex.length-1) {
        c=1;
        break;
      }
      for (int k=1; k<=6; k++) {
        if (c>imgtex.length-1) {
          break;
        }
        pg[i+3].beginShape();
        pg[i+3].texture(imgtex[c]);
        pg[i+3].vertex(pg[i+3].width-(k*75)+10, j*75, 0, 0);
        pg[i+3].vertex(pg[i+3].width-(k*75-50)+10, j*75, 100, 0);
        pg[i+3].vertex(pg[i+3].width-(k*75-50)+10, j*75+50, 100, 100);
        pg[i+3].vertex(pg[i+3].width-(k*75)+10, j*75+50, 0, 100);
        pg[i+3].endShape();
        c++;
      }
    }
    pg[i+3].endDraw();
  }
}

void drawPgTutorial() {
  pg[11].beginDraw();
  pg[11].background(0xff525252);
  pg[11].fill(255);
  pg[11].textSize(28);
  pg[11].text("Aplikasi untuk Mendesain", 20, 30);
  pg[11].text("Busana dan Perancangan Pola", 20, 65);
  pg[11].textSize(18);
  pg[11].text("Cara Penggunaan :", 10, 95);
  pg[11].textSize(15);
  pg[11].text("1. Pilihlah Desain Busana wanita ataupun Pria yang berada di", 7, 117);
  pg[11].text("    Menu Wanita dan menu Pria. pada menu Wanita terdapat ", 7, 135);
  pg[11].text("    pola Baju, Leher, Lengan, Rok ,Gaun dan Celana. Sedangkan", 7, 152);
  pg[11].text("    pada menu pria terdapat Pola Baju, Leher, Lengan, dan ", 7, 169);
  pg[11].text("    Celana. setelah memilih maka template pola akan ditampil ", 7, 186);
  pg[11].text("    kan pada sebelah kanan layar aplikasi.", 7, 203);
  pg[11].text("2. Anda dapat memilih Template pola yang telah tersedia. pilih", 7, 220);
  pg[11].text("    lah ukuran sesuai dengan kebutuhan anda. Ukuran yang ter  ", 7, 237);
  pg[11].text("    sedia pada sistem hanyalah ukuran standar pola yaitu S, M, ",7,254);
  pg[11].text("    dan L. Setelah memilih pola maka sistem akan menampilkan",7,271);
  pg[11].text("    rancangan pola pada layar aplikasi sebelah kiri dan visuali", 7, 288);
  pg[11].text("    sasi busana akan ditampilkan ditengah layar aplikasi.", 7, 305);
  pg[11].text("4. Setelah membuat rancangan busana anda dapat menambah", 7, 322);
  pg[11].text("    kan tekstur dengan memilih menu Tekstur, anda dapat memi", 7, 339);
  pg[11].text("    lih tekstur warna maupun batik. template tekstur akan di ", 7, 356);
  pg[11].text("    tampilkan pada sebelah kanan layar aplikasi.", 7, 373);
  pg[11].text("5. Anda dapat menyimpan rancangan pola busana dengan memi", 7, 390);
  pg[11].text("    lih menu File kemudian pilihlah submenu Save atau anda ", 7, 407);
  pg[11].text("    dapat menekan tombol S pada keyboard.", 7, 424);
  pg[11].text("6. Anda dapat Membuka kembali hasil rancangan pola dengan", 7, 441);
  pg[11].text("    memilih menu file kemudian pilihlah submenu Open.", 7, 458);
  pg[11].endDraw();
}


void drawPgTemplateAtasan() {
  pg[12].beginDraw();
  pg[12].background(252);
  pg[12].fill(0);
  pg[12].textSize(28);
  pg[12].text("Variasi Pola Baju Wanita", 25, 50);
  pg[12].textSize(20);
  pg[12].text("Ukuran S : ",27,110);
  pg[12].text("Ukuran M : ",27,180);
  pg[12].text("Ukuran L : ",27,250);
  c = 1;
  for (int i=1; i<=9; i++) {
    if (c>=imgAtasan.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=3; j++) {
      if (c>imgAtasan.length-1)
        break;
      pg[12].beginShape();
      pg[12].texture(imgAtasan[c]);
      pg[12].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[12].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[12].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[12].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[12].endShape();
      c++;
    }
  }
  pg[12].endDraw();
}

void drawPgTemplateUkuranW() {
  pg[22].beginDraw();
  pg[22].background(252);
  pg[22].fill(0);
  pg[22].textSize(28);
  pg[22].text("Standar Ukuran Wanita", 25, 50);
  //pg[12].textSize(20);
  //pg[12].text("Ukuran S : ",27,110);
  //pg[12].text("Ukuran M : ",27,180);
  //pg[12].text("Ukuran L : ",27,250);
  c = 1;
  for (int i=1; i<=2; i++) {
    if (c>=imgWanita.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=1; j++) {
      if (c>imgAtasan.length-1)
        break;
      pg[22].beginShape();
      pg[22].texture(imgAtasan[c]);
      pg[22].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[22].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[22].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[22].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[22].endShape();
      c++;
    }
  }
  pg[22].endDraw();
}

void drawPgTemplateUkuranP() {
  pg[23].beginDraw();
  pg[23].background(252);
  pg[23].fill(0);
  pg[23].textSize(28);
  pg[23].text("Standar Ukuran Pria", 25, 50);
  //pg[12].textSize(20);
  //pg[12].text("Ukuran S : ",27,110);
  //pg[12].text("Ukuran M : ",27,180);
  //pg[12].text("Ukuran L : ",27,250);
  c = 1;
  for (int i=1; i<=2; i++) {
    if (c>=imgWanita.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=1; j++) {
      if (c>imgAtasan.length-1)
        break;
      pg[23].beginShape();
      pg[23].texture(imgAtasan[c]);
      pg[23].vertex(pg[4].width-(j*240), i*240, 0, 0);
      pg[23].vertex(pg[4].width-(j*240-300), i*240, 100, 0);
      pg[23].vertex(pg[4].width-(j*240-300), i*240+300, 100, 100);
      pg[23].vertex(pg[4].width-(j*240), i*240+300, 0, 100);
      pg[23].endShape();
      c++;
    }
  }
  pg[23].endDraw();
}

void drawPgTemplateLeher() {
  pg[18].beginDraw();
  pg[18].background(252);
  pg[18].fill(0);
  pg[18].textSize(28);
  pg[18].text("Variasi Pola Leher Wanita", 25, 50);
  pg[18].textSize(20);
  pg[18].text("Ukuran S : ",27,150);
  pg[18].text("Ukuran M : ",27,290);
  pg[18].text("Ukuran L : ",27,450);
  c = 1;
  for (int i=1; i<=18; i++) {
    if (c>=imgLeher.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=3; j++) {
      if (c>imgLeher.length-1)
        break;
      pg[18].beginShape();
      pg[18].texture(imgLeher[c]);
      pg[18].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[18].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[18].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[18].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[18].endShape();
      c++;
    }
  }
  pg[18].endDraw();
}

void drawPgTemplateLengan() {
  pg[19].beginDraw();
  pg[19].background(252);
  pg[19].fill(0);
  pg[19].textSize(28);
  pg[19].text("Variasi Pola Lengan Wanita", 25, 50);
  pg[19].textSize(20);
  pg[19].text("Ukuran S : ",27,150);
  pg[19].text("Ukuran M : ",27,290);
  pg[19].text("Ukuran L : ",27,450);
  c = 1;
  for (int i=1; i<=18; i++) {
    if (c>=imgLengan.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=3; j++) {
      if (c>imgLengan.length-1)
        break;
      pg[19].beginShape();
      pg[19].texture(imgLengan[c]);
      pg[19].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[19].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[19].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[19].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[19].endShape();
      c++;
    }
  }
  pg[19].endDraw();
}

void drawPgTemplateRok() {
  pg[13].beginDraw();
  pg[13].background(252);
  pg[13].fill(0);
  pg[13].textSize(28);
  pg[13].text("Variasi Pola Rok", 25, 50);
  pg[13].textSize(20);
  pg[13].text("Ukuran S : ",27,150);
  pg[13].text("Ukuran M : ",27,290);
  pg[13].text("Ukuran L : ",27,450);
  c = 1;
  for (int i=1; i<=23; i++) {
    if (c>=imgRok.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=4; j++) {
      if (c>imgRok.length-1)
        break;
      pg[13].beginShape();
      pg[13].texture(imgRok[c]);
      pg[13].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[13].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[13].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[13].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[13].endShape();
      c++;
    }
  }
  pg[13].endDraw();
}

void drawPgTemplateGaun() {
  pg[14].beginDraw();
  pg[14].background(252);
  pg[14].fill(0);
  pg[14].textSize(28);
  pg[14].text("Variasi Pola Gaun", 25, 50);
  pg[14].textSize(20);
  pg[14].text("Ukuran S : ",27,110);
  pg[14].text("Ukuran M : ",27,180);
  pg[14].text("Ukuran L : ",27,250);
  c = 1;
  for (int i=1; i<=11; i++) {
    if (c>=imgGaun.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=4; j++) {
      if (c>imgGaun.length-1)
        break;
      pg[14].beginShape();
      pg[14].texture(imgGaun[c]);
      pg[14].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[14].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[14].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[14].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[14].endShape();
      c++;
    }
  }
  pg[14].endDraw();
}

void drawPgTemplateCelana() {
  pg[15].beginDraw();
  pg[15].background(252);
  pg[15].fill(0);
  pg[15].textSize(28);
  pg[15].text("Variasi Pola Celana Wanita", 25, 50);
  pg[15].textSize(20);
  pg[15].text("Ukuran S : ",27,110);
  pg[15].text("Ukuran M : ",27,180);
  pg[15].text("Ukuran L : ",27,250);
  c = 1;
  for (int i=1; i<=5; i++) {
    if (c>=imgCelana.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=2; j++) {
      if (c>imgCelana.length-1)
        break;
      pg[15].beginShape();
      pg[15].texture(imgCelana[c]);
      pg[15].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[15].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[15].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[15].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[15].endShape();
      c++;
    }
  }
  pg[15].endDraw();
}

void drawPgTemplateAtasanLk() {
  pg[16].beginDraw();
  pg[16].background(252);
  pg[16].fill(0);
  pg[16].textSize(28);
  pg[16].text("Variasi Pola Baju Laki-Laki", 25, 50);
  pg[16].textSize(20);
  pg[16].text("Ukuran S : ",27,110);
  pg[16].text("Ukuran M : ",27,180);
  pg[16].text("Ukuran L : ",27,250);
  c = 1;
  for (int i=1; i<=5; i++) {
    if (c>=imgAtasanLk.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=2; j++) {
      if (c>imgAtasanLk.length-1)
        break;
      pg[16].beginShape();
      pg[16].texture(imgAtasanLk[c]);
      pg[16].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[16].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[16].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[16].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[16].endShape();
      c++;
    }
  }
  pg[16].endDraw();
}

void drawPgTemplateCelanaLk() {
  pg[17].beginDraw();
  pg[17].background(252);
  pg[17].fill(0);
  pg[17].textSize(28);
  pg[17].text("Variasi Pola Celana Laki-Laki", 25, 50);
  pg[17].textSize(20);
  pg[17].text("Ukuran S : ",27,110);
  pg[17].text("Ukuran M : ",27,180);
  pg[17].text("Ukuran L : ",27,250);
  c = 1;
  for (int i=1; i<=5; i++) {
    if (c>=imgCelanaLk.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=2; j++) {
      if (c>imgCelanaLk.length-1)
        break;
      pg[17].beginShape();
      pg[17].texture(imgCelanaLk[c]);
      pg[17].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[17].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[17].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[17].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[17].endShape();
      c++;
    }
  }
  pg[17].endDraw();
}

void drawPgTemplateLeherLk() {
  pg[20].beginDraw();
  pg[20].background(252);
  pg[20].fill(0);
  pg[20].textSize(28);
  pg[20].text("Variasi Pola Leher Laki-Laki", 25, 50);
  pg[20].textSize(20);
  pg[20].text("Ukuran S : ",27,150);
  pg[20].text("Ukuran M : ",27,290);
  pg[20].text("Ukuran L : ",27,450);
  c = 1;
  for (int i=1; i<=18; i++) {
    if (c>=imgLeherLk.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=3; j++) {
      if (c>imgLeher.length-1)
        break;
      pg[20].beginShape();
      pg[20].texture(imgLeherLk[c]);
      pg[20].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[20].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[20].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[20].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[20].endShape();
      c++;
    }
  }
  pg[20].endDraw();
}

void drawPgTemplateLenganLk() {
  pg[21].beginDraw();
  pg[21].background(252);
  pg[21].fill(0);
  pg[21].textSize(28);
  pg[21].text("Variasi Pola Lengan Laki-laki", 25, 50);
  pg[21].textSize(20);
  pg[21].text("Ukuran S : ",27,110);
  pg[21].text("Ukuran M : ",27,180);
  pg[21].text("Ukuran L : ",27,250);
  c = 1;
  for (int i=1; i<=11; i++) {
    if (c>=imgLenganLk.length-1) {
      c=1;
      break;
    }
    for (int j=1; j<=4; j++) {
      if (c>imgLenganLk.length-1)
        break;
      pg[21].beginShape();
      pg[21].texture(imgLenganLk[c]);
      pg[21].vertex(pg[4].width-(j*75)+10, i*75, 0, 0);
      pg[21].vertex(pg[4].width-(j*75-50)+10, i*75, 100, 0);
      pg[21].vertex(pg[4].width-(j*75-50)+10, i*75+50, 100, 100);
      pg[21].vertex(pg[4].width-(j*75)+10, i*75+50, 0, 100);
      pg[21].endShape();
      c++;
    }
  }
  pg[21].endDraw();
}


void imagePgs() {
  image(pg[1], 0, 0);
  image(pg[2], 0, pg[1].height);
  image(pg[3], width/3, pg[1].height);
  image(pg[10], 2*width/3, height-220);

  if (pgTex1)
    image(pg[4], 2*width/3, pg[1].height);
  else if (pgTex2)
    image(pg[5], 2*width/3, pg[1].height);
  //else if (pgTex3)
  //  image(pg[6], 2*width/3, pg[1].height);
  else if (pgAtasan)
    image(pg[12], 2*width/3, pg[1].height);
  else if (pgRok)
    image(pg[13], 2*width/3, pg[1].height);
  else if (pgGaun)
    image(pg[14], 2*width/3, pg[1].height);
  else if (pgCelana)
    image(pg[15], 2*width/3, pg[1].height);
  else if (pgAtasanLk)
    image(pg[16], 2*width/3, pg[1].height);
  else if (pgCelanaLk)
    image(pg[17], 2*width/3, pg[1].height);
  else if (pgLeher)
    image(pg[18], 2*width/3, pg[1].height);
  else if (pgLengan)
    image(pg[19], 2*width/3, pg[1].height);
  else if (pgLeherLk)
    image(pg[20], 2*width/3, pg[1].height);
  else if (pgLenganLk)
    image(pg[21], 2*width/3, pg[1].height);
  else if (pgUkuranW)
    image(pg[22], 2*width/3, pg[1].height); 
  else if (pgUkuranP)
    image(pg[23], 2*width/3, pg[1].height);  
  else// if(pgTutor)
    image(pg[11], 2*width/3, pg[1].height);
}

void defineMenus() {
  menuList[0] = new ClassOneDropDownMenu("File", 0); // 23 = x pos
  menuList[0].addNewLine("New", 0); // 0 = index
  menuList[0].addNewLine("Open", 1);
  menuList[0].addNewLine("Save", 2);
  menuList[0].addNewLine("Tutorial", 3);
  menuList[0].addNewLine("Close", 4);

  menuList[1] = new ClassOneDropDownMenu("Ukuran", 100);// x pos
  menuList[1].addNewLine("Wanita", 100);// 100 = index
  menuList[1].addNewLine("Pria", 101);// 100 = index
  menuList[1].addNewLine("Show Grid", 102);

  menuList[2] = new ClassOneDropDownMenu("Wanita", 2*100);// x pos
  menuList[2].addNewLine("Baju", 200);// index
  menuList[2].addNewLine("Leher", 201);
  menuList[2].addNewLine("Lengan", 202);
  menuList[2].addNewLine("Rok", 203);
  menuList[2].addNewLine("Gaun", 204);
  menuList[2].addNewLine("Celana", 205);

  menuList[3] = new ClassOneDropDownMenu("Pria", 3*100);// x pos
  menuList[3].addNewLine("Baju", 300);// index
  menuList[3].addNewLine("Leher", 301);
  menuList[3].addNewLine("Lengan", 302);
  menuList[3].addNewLine("Celana", 303);

  menuList[4] = new ClassOneDropDownMenu("Tekstur", 4*100);// x pos
  menuList[4].addNewLine("Tekstur 1", 400);// index //warna
  menuList[4].addNewLine("Tekstur 2", 401); //
  //menuList[4].addNewLine("Tekstur 3", 402);// kain
}

void drawLines() {
  line(0, pg[1].height, width, pg[1].height);
  line(width/3, pg[1].height, width/3, height);
  line(2*width/3, pg[1].height, 2*width/3, height);
}

void drawBasement() {
  if (!newProject) {
    base();
    base1();
    int temp=0;
    if (threeDimension) {
      for (int j=0; j<=floors.size()-1; j++) {
        if (floors.get(j).isSelected) {
          temp=j;
          break;
        } else if (j==floors.size()-1)
          floors.get(j).isSelected=true;
      }
      for (int i=0; i<floors.size(); i++) {
        urlTexture = floors.get(temp).urlTexture;
        floors.get(i).display();
      }
    }
  }
}

void drawMenuBar() {
  for (int i=0; i<menuList.length; i++)
    menuList[i].display();
}

void fileSelectedForSave(File selection) {
  if (selection == null)
    println("\nWindow was closed or the user hit cancel.");
  else {
    println("\nUser selected " + selection.getAbsolutePath());
    output = createWriter(selection.getAbsolutePath());
    //output.println("nodes"+TAB+nodes.size());
    ////output.println(nodes.size());
    //for (int i=0; i<=nodes.size()-1; i++)
    //  output.println("n"+TAB+nodes.get(i).x+TAB+nodes.get(i).z);
   
    output.println("polaRok1"+TAB+polaRok1.size());
    //output.println(nodes.size());
    for (int i=0; i<=polaRok1.size()-1; i++)
      output.println("Rok1"+TAB+polaRok1.get(i).x+TAB+polaRok1.get(i).z);  
      
    output.println("polaRok2"+TAB+polaRok2.size());
    //output.println(nodes.size());
    for (int i=0; i<=polaRok2.size()-1; i++)
      output.println("Rok2"+TAB+polaRok2.get(i).x+TAB+polaRok2.get(i).z);
      
    output.println("polaRok3"+TAB+polaRok3.size());
    //output.println(nodes.size());
    for (int i=0; i<=polaRok3.size()-1; i++)
      output.println("Rok3"+TAB+polaRok3.get(i).x+TAB+polaRok3.get(i).z);   
    
    output.println("polaRok4"+TAB+polaRok4.size());
    //output.println(nodes.size());
    for (int i=0; i<=polaRok4.size()-1; i++)
      output.println("Rok4"+TAB+polaRok4.get(i).x+TAB+polaRok4.get(i).z);  
    
    output.println("polaRok5"+TAB+polaRok5.size());
    //output.println(nodes.size());
    for (int i=0; i<=polaRok5.size()-1; i++)
      output.println("Rok5"+TAB+polaRok5.get(i).x+TAB+polaRok5.get(i).z);   
      
    output.println("polaAtasan1"+TAB+polaAtasan1.size());
    for (int i=0; i<=polaAtasan1.size()-1; i++)
      output.println("Atasan1"+TAB+polaAtasan1.get(i).x+TAB+polaAtasan1.get(i).z);
      
    output.println("polaAtasan2"+TAB+polaAtasan2.size());
    for (int i=0; i<=polaAtasan2.size()-1; i++)
      output.println("Atasan2"+TAB+polaAtasan2.get(i).x+TAB+polaAtasan2.get(i).z);
     
    output.println("polaAtasan3"+TAB+polaAtasan3.size());
    for (int i=0; i<=polaAtasan3.size()-1; i++)
      output.println("Atasan3"+TAB+polaAtasan3.get(i).x+TAB+polaAtasan3.get(i).z);  
    
    output.println("polaAtasan4"+TAB+polaAtasan4.size());
    for (int i=0; i<=polaAtasan4.size()-1; i++)
      output.println("Atasan4"+TAB+polaAtasan4.get(i).x+TAB+polaAtasan4.get(i).z);
     
    output.println("polaAtasan5"+TAB+polaAtasan5.size());
    for (int i=0; i<=polaAtasan5.size()-1; i++)
      output.println("Atasan5"+TAB+polaAtasan5.get(i).x+TAB+polaAtasan5.get(i).z);   
      
    output.println("polaLeher1"+TAB+polaLeher1.size());
    for (int i=0; i<=polaLeher1.size()-1; i++)
      output.println("Leher1"+TAB+polaLeher1.get(i).x+TAB+polaLeher1.get(i).z);   
      
    output.println("polaLeher2"+TAB+polaLeher2.size());
    for (int i=0; i<=polaLeher2.size()-1; i++)
      output.println("Leher2"+TAB+polaLeher2.get(i).x+TAB+polaLeher2.get(i).z);
      
    output.println("polaLeher3"+TAB+polaLeher3.size());
    for (int i=0; i<=polaLeher3.size()-1; i++)
      output.println("Leher3"+TAB+polaLeher3.get(i).x+TAB+polaLeher3.get(i).z);  
    
    output.println("polaLeher4"+TAB+polaLeher4.size());
    for (int i=0; i<=polaLeher4.size()-1; i++)
      output.println("Leher4"+TAB+polaLeher4.get(i).x+TAB+polaLeher4.get(i).z); 
     
    output.println("polaLeher5"+TAB+polaLeher5.size());
    for (int i=0; i<=polaLeher5.size()-1; i++)
      output.println("Leher5"+TAB+polaLeher5.get(i).x+TAB+polaLeher5.get(i).z);
     
    output.println("polaLengan1"+TAB+polaLengan1.size());
    for (int i=0; i<=polaLengan1.size()-1; i++)
      output.println("Lengan1"+TAB+polaLengan1.get(i).x+TAB+polaLengan1.get(i).z);
      
    output.println("polaLengan2"+TAB+polaLengan2.size());
    for (int i=0; i<=polaLengan2.size()-1; i++)
      output.println("Lengan2"+TAB+polaLengan2.get(i).x+TAB+polaLengan2.get(i).z);    
      
    output.println("polaLengan3"+TAB+polaLengan3.size());
    for (int i=0; i<=polaLengan3.size()-1; i++)
      output.println("Lengan3"+TAB+polaLengan3.get(i).x+TAB+polaLengan3.get(i).z);
    
    output.println("polaLengan4"+TAB+polaLengan4.size());
    for (int i=0; i<=polaLengan4.size()-1; i++)
      output.println("Lengan4"+TAB+polaLengan4.get(i).x+TAB+polaLengan4.get(i).z);
    
    output.println("polaLengan5"+TAB+polaLengan5.size());
    for (int i=0; i<=polaLengan5.size()-1; i++)
      output.println("Lengan5"+TAB+polaLengan5.get(i).x+TAB+polaLengan5.get(i).z);
    
    output.println("polaGaun1"+TAB+polaGaun1.size());
    for (int i=0; i<=polaGaun1.size()-1; i++)
      output.println("Gaun1"+TAB+polaGaun1.get(i).x+TAB+polaGaun1.get(i).z); 
      
    output.println("polaGaun2"+TAB+polaGaun2.size());
    for (int i=0; i<=polaGaun2.size()-1; i++)
      output.println("Gaun2"+TAB+polaGaun2.get(i).x+TAB+polaGaun2.get(i).z);  
      
    output.println("polaGaun3"+TAB+polaGaun3.size());
    for (int i=0; i<=polaGaun3.size()-1; i++)
      output.println("Gaun3"+TAB+polaGaun3.get(i).x+TAB+polaGaun3.get(i).z);  
   
    output.println("polaGaun4"+TAB+polaGaun4.size());
    for (int i=0; i<=polaGaun4.size()-1; i++)
      output.println("Gaun4"+TAB+polaGaun4.get(i).x+TAB+polaGaun4.get(i).z);  
    
    output.println("polaGaun5"+TAB+polaGaun5.size());
    for (int i=0; i<=polaGaun5.size()-1; i++)
      output.println("Gaun5"+TAB+polaGaun5.get(i).x+TAB+polaGaun5.get(i).z);  
     
    output.println("polaCelana1"+TAB+polaCelana1.size());
    for (int i=0; i<=polaCelana1.size()-1; i++)
      output.println("Celana1"+TAB+polaCelana1.get(i).x+TAB+polaCelana1.get(i).z);   
    
    output.println("polaCelana2"+TAB+polaCelana2.size());
    for (int i=0; i<=polaCelana2.size()-1; i++)
      output.println("Celana2"+TAB+polaCelana2.get(i).x+TAB+polaCelana2.get(i).z);
      
    output.println("polaCelana3"+TAB+polaCelana3.size());
    for (int i=0; i<=polaCelana3.size()-1; i++)
      output.println("Celana3"+TAB+polaCelana3.get(i).x+TAB+polaCelana3.get(i).z);
    
    output.println("polaCelana4"+TAB+polaCelana4.size());
    for (int i=0; i<=polaCelana4.size()-1; i++)
      output.println("Celana4"+TAB+polaCelana4.get(i).x+TAB+polaCelana4.get(i).z);
    
    output.println("polaCelana5"+TAB+polaCelana5.size());
    for (int i=0; i<=polaCelana5.size()-1; i++)
      output.println("Celana5"+TAB+polaCelana5.get(i).x+TAB+polaCelana5.get(i).z);
    
    output.println("polaAtasanlk1"+TAB+polaAtasanlk1.size());
    for (int i=0; i<=polaAtasanlk1.size()-1; i++)
      output.println("AtasanLK1"+TAB+polaAtasanlk1.get(i).x+TAB+polaAtasanlk1.get(i).z); 
    
    output.println("polaAtasanlk2"+TAB+polaAtasanlk2.size());
    for (int i=0; i<=polaAtasanlk2.size()-1; i++)
      output.println("AtasanLK2"+TAB+polaAtasanlk2.get(i).x+TAB+polaAtasanlk2.get(i).z);  
      
    output.println("polaAtasanlk3"+TAB+polaAtasanlk3.size());
    for (int i=0; i<=polaAtasanlk3.size()-1; i++)
      output.println("AtasanLK3"+TAB+polaAtasanlk3.get(i).x+TAB+polaAtasanlk3.get(i).z);    
    
    output.println("polaAtasanlk4"+TAB+polaAtasanlk4.size());
    for (int i=0; i<=polaAtasanlk4.size()-1; i++)
      output.println("AtasanLK4"+TAB+polaAtasanlk4.get(i).x+TAB+polaAtasanlk4.get(i).z); 
    
    output.println("polaAtasanlk5"+TAB+polaAtasanlk5.size());
    for (int i=0; i<=polaAtasanlk5.size()-1; i++)
      output.println("AtasanLK5"+TAB+polaAtasanlk5.get(i).x+TAB+polaAtasanlk5.get(i).z); 
    
    output.println("polaLeherlk1"+TAB+polaLeherlk1.size());
    for (int i=0; i<=polaLeherlk1.size()-1; i++)
      output.println("LeherLK1"+TAB+polaLeherlk1.get(i).x+TAB+polaLeherlk1.get(i).z);  
      
    output.println("polaLeherlk2"+TAB+polaLeherlk2.size());
    for (int i=0; i<=polaLeherlk2.size()-1; i++)
      output.println("LeherLK2"+TAB+polaLeherlk2.get(i).x+TAB+polaLeherlk2.get(i).z);  
      
    output.println("polaLeherlk3"+TAB+polaLeherlk3.size());
    for (int i=0; i<=polaLeherlk3.size()-1; i++)
      output.println("LeherLK3"+TAB+polaLeherlk3.get(i).x+TAB+polaLeherlk3.get(i).z);  
    
    output.println("polaLeherlk4"+TAB+polaLeherlk4.size());
    for (int i=0; i<=polaLeherlk4.size()-1; i++)
      output.println("LeherLK4"+TAB+polaLeherlk4.get(i).x+TAB+polaLeherlk4.get(i).z);  
   
    output.println("polaLeherlk5"+TAB+polaLeherlk5.size());
    for (int i=0; i<=polaLeherlk5.size()-1; i++)
      output.println("LeherLK5"+TAB+polaLeherlk5.get(i).x+TAB+polaLeherlk5.get(i).z);  
     
    output.println("polaLenganlk1"+TAB+polaLenganlk1.size());
    for (int i=0; i<=polaLenganlk1.size()-1; i++)
      output.println("LenganLK1"+TAB+polaLenganlk1.get(i).x+TAB+polaLenganlk1.get(i).z);  
      
    output.println("polaLenganlk2"+TAB+polaLenganlk2.size());
    for (int i=0; i<=polaLenganlk2.size()-1; i++)
      output.println("LenganLK2"+TAB+polaLenganlk2.get(i).x+TAB+polaLenganlk2.get(i).z); 
    
    output.println("polaLenganlk3"+TAB+polaLenganlk3.size());
    for (int i=0; i<=polaLenganlk3.size()-1; i++)
      output.println("LenganLK3"+TAB+polaLenganlk3.get(i).x+TAB+polaLenganlk3.get(i).z);  
    
    output.println("polaLenganlk4"+TAB+polaLenganlk4.size());
    for (int i=0; i<=polaLenganlk4.size()-1; i++)
      output.println("LenganLK4"+TAB+polaLenganlk4.get(i).x+TAB+polaLenganlk4.get(i).z);  
      
    output.println("polaLenganlk5"+TAB+polaLenganlk5.size());
    for (int i=0; i<=polaLenganlk5.size()-1; i++)
      output.println("LenganLK5"+TAB+polaLenganlk5.get(i).x+TAB+polaLenganlk5.get(i).z);    
      
    output.println("polaCelanalk1"+TAB+polaCelanalk1.size());
    for (int i=0; i<=polaCelanalk1.size()-1; i++)
      output.println("CelanaLK1"+TAB+polaCelanalk1.get(i).x+TAB+polaCelanalk1.get(i).z);
      
    output.println("polaCelanalk2"+TAB+polaCelanalk2.size());
    for (int i=0; i<=polaCelanalk2.size()-1; i++)
      output.println("CelanaLK2"+TAB+polaCelanalk2.get(i).x+TAB+polaCelanalk2.get(i).z);
    
    output.println("polaCelanalk3"+TAB+polaCelanalk3.size());
    for (int i=0; i<=polaCelanalk3.size()-1; i++)
      output.println("CelanaLK3"+TAB+polaCelanalk3.get(i).x+TAB+polaCelanalk3.get(i).z);
    output.println("polaCelanalk4"+TAB+polaCelanalk4.size());
    for (int i=0; i<=polaCelanalk4.size()-1; i++)
      output.println("CelanaLK4"+TAB+polaCelanalk4.get(i).x+TAB+polaCelanalk4.get(i).z);
    output.println("polaCelanalk5"+TAB+polaCelanalk5.size());
    for (int i=0; i<=polaCelanalk5.size()-1; i++)
      output.println("CelanaLK5"+TAB+polaCelanalk5.get(i).x+TAB+polaCelanalk5.get(i).z);  
    //output.println("floors"+TAB+floors.size());
    //for (int i=0; i<=floors.size()-1; i++)
      //output.println("f"+TAB+floors.get(i).y1_pos+TAB+floors.get(i).h+TAB+floors.get(i).scaleFloor+TAB+floors.get(i).urlTexture);
    
    //rok  
    output.println("rok1"+TAB+rok1.size());
    for (int i=0; i<=rok1.size()-1; i++)
      output.println("rokv1"+TAB+rok1.get(i).x+TAB+rok1.get(i).z); 
     
    output.println("rok2"+TAB+rok2.size());
    for (int i=0; i<=rok2.size()-1; i++)
      output.println("rokv2"+TAB+rok2.get(i).x+TAB+rok2.get(i).z);  
     
    output.println("rok3"+TAB+rok3.size());
    for (int i=0; i<=rok3.size()-1; i++)
      output.println("rokv3"+TAB+rok3.get(i).x+TAB+rok3.get(i).z);
      
    output.println("garisRok"+TAB+garisRok.size());
    for (int i=0; i<=garisRok.size()-1; i++)
      output.println("rokv4"+TAB+garisRok.get(i).x+TAB+garisRok.get(i).z);  
      
    output.println("garisRok2"+TAB+garisRok2.size());
    for (int i=0; i<=garisRok2.size()-1; i++)
      output.println("rokv5"+TAB+garisRok2.get(i).x+TAB+garisRok2.get(i).z);  
    //atasan  
    output.println("atasan1"+TAB+atasan1.size());
    for (int i=0; i<=atasan1.size()-1; i++)
      output.println("atasanv1"+TAB+atasan1.get(i).x+TAB+atasan1.get(i).z);
    
    output.println("atasan2"+TAB+atasan2.size());
    for (int i=0; i<=atasan2.size()-1; i++)
      output.println("atasanv2"+TAB+atasan2.get(i).x+TAB+atasan2.get(i).z);
      
    output.println("atasan3"+TAB+atasan3.size());
    for (int i=0; i<=atasan3.size()-1; i++)
      output.println("atasanv3"+TAB+atasan3.get(i).x+TAB+atasan3.get(i).z);  
      
    output.println("garisAtasan"+TAB+garisAtasan.size());
    for (int i=0; i<=garisAtasan.size()-1; i++)
      output.println("atasanv4"+TAB+garisAtasan.get(i).x+TAB+garisAtasan.get(i).z);
      
    output.println("garisAtasan2"+TAB+garisAtasan2.size());
    for (int i=0; i<=garisAtasan2.size()-1; i++)
      output.println("atasanv5"+TAB+garisAtasan2.get(i).x+TAB+garisAtasan2.get(i).z);  
     //leher 
    output.println("leher1"+TAB+leher1.size());
    for (int i=0; i<=leher1.size()-1; i++)
      output.println("leherv1"+TAB+leher1.get(i).x+TAB+leher1.get(i).z);
    
    output.println("leher2"+TAB+leher2.size());
    for (int i=0; i<=leher2.size()-1; i++)
      output.println("leherv2"+TAB+leher2.get(i).x+TAB+leher2.get(i).z);
      
    output.println("leher3"+TAB+leher3.size());
    for (int i=0; i<=leher3.size()-1; i++)
      output.println("leherv3"+TAB+leher3.get(i).x+TAB+leher3.get(i).z);  
      
    output.println("garisLeher"+TAB+garisLeher.size());
    for (int i=0; i<=garisLeher.size()-1; i++)
      output.println("leherv4"+TAB+garisLeher.get(i).x+TAB+garisLeher.get(i).z);
      
    output.println("garisLeher2"+TAB+garisLeher2.size());
    for (int i=0; i<=garisLeher2.size()-1; i++)
      output.println("leherv5"+TAB+garisLeher2.get(i).x+TAB+garisLeher2.get(i).z);   
      
    //lengan
    output.println("lengan1"+TAB+lengan1.size());
    for (int i=0; i<=lengan1.size()-1; i++)
      output.println("lenganv1"+TAB+lengan1.get(i).x+TAB+lengan1.get(i).z);
    
    output.println("lengan2"+TAB+lengan2.size());
    for (int i=0; i<=lengan2.size()-1; i++)
      output.println("lenganv2"+TAB+lengan2.get(i).x+TAB+lengan2.get(i).z);
      
    output.println("lengan3"+TAB+lengan3.size());
    for (int i=0; i<=lengan3.size()-1; i++)
      output.println("lenganv3"+TAB+lengan3.get(i).x+TAB+lengan3.get(i).z);  
      
    output.println("garisLengan"+TAB+garisLengan.size());
    for (int i=0; i<=garisLengan.size()-1; i++)
      output.println("lenganv4"+TAB+garisLengan.get(i).x+TAB+garisLengan.get(i).z);
      
    output.println("garisLengan2"+TAB+garisLengan2.size());
    for (int i=0; i<=garisLengan2.size()-1; i++)
      output.println("lenganv5"+TAB+garisLengan2.get(i).x+TAB+garisLengan2.get(i).z); 
  
    //gaun
    output.println("gaun1"+TAB+gaun1.size());
    for (int i=0; i<=gaun1.size()-1; i++)
      output.println("gaunv1"+TAB+gaun1.get(i).x+TAB+gaun1.get(i).z);
    
    output.println("gaun2"+TAB+gaun2.size());
    for (int i=0; i<=gaun2.size()-1; i++)
      output.println("gaunv2"+TAB+gaun2.get(i).x+TAB+gaun2.get(i).z);
      
    output.println("gaun3"+TAB+gaun3.size());
    for (int i=0; i<=gaun3.size()-1; i++)
      output.println("gaunv3"+TAB+gaun3.get(i).x+TAB+gaun3.get(i).z);  
      
    output.println("garisGaun"+TAB+garisGaun.size());
    for (int i=0; i<=garisGaun.size()-1; i++)
      output.println("gaunv4"+TAB+garisGaun.get(i).x+TAB+garisGaun.get(i).z);
      
    output.println("garisGaun2"+TAB+garisGaun2.size());
    for (int i=0; i<=garisGaun2.size()-1; i++)
      output.println("gaunv5"+TAB+garisGaun2.get(i).x+TAB+garisGaun2.get(i).z); 
  
    //celana
    output.println("celana1"+TAB+celana1.size());
    for (int i=0; i<=celana1.size()-1; i++)
      output.println("celanav1"+TAB+celana1.get(i).x+TAB+celana1.get(i).z);
    
    output.println("celana2"+TAB+celana2.size());
    for (int i=0; i<=celana2.size()-1; i++)
      output.println("celanav2"+TAB+celana2.get(i).x+TAB+celana2.get(i).z);
      
    output.println("celana3"+TAB+celana3.size());
    for (int i=0; i<=celana3.size()-1; i++)
      output.println("celanav3"+TAB+celana3.get(i).x+TAB+celana3.get(i).z);  
      
    output.println("garisCelana"+TAB+garisCelana.size());
    for (int i=0; i<=garisCelana.size()-1; i++)
      output.println("celanav4"+TAB+garisCelana.get(i).x+TAB+garisCelana.get(i).z);
      
    output.println("garisCelana2"+TAB+garisCelana2.size());
    for (int i=0; i<=garisCelana2.size()-1; i++)
      output.println("celanav5"+TAB+garisCelana2.get(i).x+TAB+garisCelana2.get(i).z); 
     
    //atasanlk
    output.println("atasanlk1"+TAB+atasanlk1.size());
    for (int i=0; i<=atasanlk1.size()-1; i++)
      output.println("atasanlkv1"+TAB+atasanlk1.get(i).x+TAB+atasanlk1.get(i).z);
    
    output.println("atasanlk2"+TAB+atasanlk2.size());
    for (int i=0; i<=atasanlk2.size()-1; i++)
      output.println("atasanlkv2"+TAB+atasanlk2.get(i).x+TAB+atasanlk2.get(i).z);
      
    output.println("atasanlk3"+TAB+atasanlk3.size());
    for (int i=0; i<=atasanlk3.size()-1; i++)
      output.println("atasanlkv3"+TAB+atasanlk3.get(i).x+TAB+atasanlk3.get(i).z);  
      
    output.println("garisAtasanlk"+TAB+garisAtasanlk.size());
    for (int i=0; i<=garisAtasanlk.size()-1; i++)
      output.println("atasanlkv4"+TAB+garisAtasanlk.get(i).x+TAB+garisAtasanlk.get(i).z);
      
    output.println("garisAtasanlk2"+TAB+garisAtasanlk2.size());
    for (int i=0; i<=garisAtasanlk2.size()-1; i++)
      output.println("atasanlkv5"+TAB+garisAtasanlk2.get(i).x+TAB+garisAtasanlk2.get(i).z);
    
    //leherlk
    output.println("leherlk"+TAB+leherlk1.size());
    for (int i=0; i<=leherlk1.size()-1; i++)
      output.println("leherlkv1"+TAB+leherlk1.get(i).x+TAB+leherlk1.get(i).z);
    
    output.println("leherlk2"+TAB+leherlk2.size());
    for (int i=0; i<=leherlk2.size()-1; i++)
      output.println("leherlkv2"+TAB+leherlk2.get(i).x+TAB+leherlk2.get(i).z);
      
    output.println("leherlk3"+TAB+leherlk3.size());
    for (int i=0; i<=leherlk3.size()-1; i++)
      output.println("leherlkv3"+TAB+leherlk3.get(i).x+TAB+leherlk3.get(i).z);  
      
    output.println("garisLeherlk"+TAB+garisLeherlk.size());
    for (int i=0; i<=garisLeherlk.size()-1; i++)
      output.println("leherlkv4"+TAB+garisLeherlk.get(i).x+TAB+garisLeherlk.get(i).z);
      
    output.println("garisLeherlk2"+TAB+garisLeherlk2.size());
    for (int i=0; i<=garisLeherlk2.size()-1; i++)
      output.println("leherlkv5"+TAB+garisLeherlk2.get(i).x+TAB+garisLeherlk2.get(i).z);  
      
    //lenganlk
    output.println("lenganlk1"+TAB+lenganlk1.size());
    for (int i=0; i<=lenganlk1.size()-1; i++)
      output.println("lenganlkv1"+TAB+lenganlk1.get(i).x+TAB+lenganlk1.get(i).z);
    
    output.println("lenganlk2"+TAB+lenganlk2.size());
    for (int i=0; i<=lenganlk2.size()-1; i++)
      output.println("lenganlkv2"+TAB+lenganlk2.get(i).x+TAB+lenganlk2.get(i).z);
      
    output.println("lenganlk3"+TAB+lenganlk3.size());
    for (int i=0; i<=lenganlk3.size()-1; i++)
      output.println("lenganlkv3"+TAB+lenganlk3.get(i).x+TAB+lenganlk1.get(i).z);  
      
    output.println("garisLenganlk"+TAB+garisLenganlk.size());
    for (int i=0; i<=garisLenganlk.size()-1; i++)
      output.println("lenganlkv4"+TAB+garisLenganlk.get(i).x+TAB+garisLenganlk.get(i).z);
      
    output.println("garisLenganlk2"+TAB+garisLenganlk2.size());
    for (int i=0; i<=garisLenganlk2.size()-1; i++)
      output.println("lenganlkv5"+TAB+garisLenganlk2.get(i).x+TAB+garisLenganlk2.get(i).z); 
      
    //celanalk
    output.println("celanalk"+TAB+celanalk1.size());
    for (int i=0; i<=celanalk1.size()-1; i++)
      output.println("celanalkv1"+TAB+celanalk1.get(i).x+TAB+celanalk1.get(i).z);
    
    output.println("celanalk2"+TAB+celanalk2.size());
    for (int i=0; i<=celanalk2.size()-1; i++)
      output.println("celanalkv2"+TAB+celanalk2.get(i).x+TAB+celanalk2.get(i).z);
      
    output.println("celanalk3"+TAB+celanalk3.size());
    for (int i=0; i<=celanalk3.size()-1; i++)
      output.println("celanalkv3"+TAB+celanalk3.get(i).x+TAB+celanalk1.get(i).z);  
      
    output.println("garisCelanalk"+TAB+garisCelanalk.size());
    for (int i=0; i<=garisCelanalk.size()-1; i++)
      output.println("celanalkv4"+TAB+garisCelanalk.get(i).x+TAB+garisCelanalk.get(i).z);
      
    output.println("garisCelanalk2"+TAB+garisCelanalk2.size());
    for (int i=0; i<=garisCelanalk2.size()-1; i++)
      output.println("celanalkv5"+TAB+garisCelanalk2.get(i).x+TAB+garisCelanalk2.get(i).z); 
      
    output.flush();
    output.close();
  }
}

void openProject() {
  File start = new File(sketchPath("")+"/Saved Projects"+"/*.txt");
  selectInput("Select a file to load:", "fileSelectedForLoad", start);
}

void fileSelectedForLoad(File selection) {
  if (selection == null)
    println("\nWindow was closed or the user hit cancel.");
  else {
    println("\nUser selected " + selection.getAbsolutePath());
    newProject();
    parseFile(selection);
    newProject = false;
  }
}

void parseFile(File selection) {
  BufferedReader reader = createReader(selection.getAbsolutePath());
  String line = null;
  try {
    while ((line = reader.readLine()) != null) {
      String[] pieces = split(line, TAB);
      if (pieces[0].equals("Rok1"))
          polaRok1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));//, PApplet.parseFloat(pieces[3]), PApplet.parseFloat(pieces[4])
      if (pieces[0].equals("Rok2"))
          polaRok2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("Rok3"))
          polaRok3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("Rok4"))
          polaRok4.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("Rok5"))
          polaRok5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));    
        
      if (pieces[0].equals("Atasan1"))
          polaAtasan1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("Atasan2"))
          polaAtasan2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("Atasan3"))
          polaAtasan3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("Atasan4"))
          polaAtasan4.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("Atasan5"))
          polaAtasan5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
        
      if (pieces[0].equals("Leher1"))
          polaLeher1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("Leher2"))
          polaLeher2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));    
      if (pieces[0].equals("Leher3"))
          polaLeher3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("Leher4"))
          polaLeher4.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("Leher5"))
          polaLeher5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      
      if (pieces[0].equals("Lengan1"))
          polaLengan1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("Lengan2"))
          polaLengan2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("Lengan3"))
          polaLengan3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("Lengan4"))
          polaLengan5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("Lengan5"))
          polaLengan5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      
      if (pieces[0].equals("Gaun1"))
          polaGaun1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("Gaun2"))
          polaGaun2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("Gaun3"))
          polaGaun3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("Gaun4"))
          polaGaun4.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("Gaun5"))
          polaGaun5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      
      if (pieces[0].equals("Celana1"))
          polaCelana1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("Celana2"))
          polaCelana2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
      if (pieces[0].equals("Celana3"))
          polaCelana3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("Celana4"))
          polaCelana4.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
      if (pieces[0].equals("Celana5"))
          polaCelana5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
        
      if (pieces[0].equals("AtasanLk1"))
          polaAtasanlk1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("AtasanLk2"))
          polaAtasanlk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("AtasanLk3"))
          polaAtasanlk3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("AtasanLk4"))
          polaAtasanlk4.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("AtasanLk5"))
          polaAtasanlk5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      
      if (pieces[0].equals("LeherLk1"))
          polaLeherlk1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("LeherLk2"))
          polaLeherlk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
      if (pieces[0].equals("LeherLk3"))
          polaLeherlk3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("LeherLk4"))
          polaLeherlk4.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
      if (pieces[0].equals("LeherLk5"))
          polaLeherlk5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
        
      if (pieces[0].equals("LenganLk1"))
          polaLenganlk1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));     
      if (pieces[0].equals("LenganLk2"))
          polaLenganlk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));     
      if (pieces[0].equals("LenganLk3"))
          polaLenganlk3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));     
      if (pieces[0].equals("LenganLk4"))
          polaLenganlk4.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));     
      if (pieces[0].equals("LenganLk5"))
          polaLenganlk5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
        
      if (pieces[0].equals("Celanalk1"))
          polaCelanalk1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));    
      if (pieces[0].equals("Celanalk2"))
          polaCelanalk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
      if (pieces[0].equals("Celanalk3"))
          polaCelanalk3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));    
      if (pieces[0].equals("Celanalk4"))
          polaCelanalk4.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
      if (pieces[0].equals("Celanalk5"))
          polaCelanalk5.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      
      if (pieces[0].equals("rokv1"))
          rok1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("rokv2"))
          rok2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));
      if (pieces[0].equals("rokv3"))
          rok3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("rokv4"))
          garisRok.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("rokv5"))
          garisRok2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
     
      if (pieces[0].equals("atasanv1"))
          atasan1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("atasanv2"))
          atasan2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("atasanv3"))
          atasan3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("atasanv4"))
          garisAtasan.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("atasanv5"))
          garisAtasan2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
     
      if (pieces[0].equals("leherv1"))
          leher1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("leherv2"))
          leher2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      if (pieces[0].equals("leherv3"))
          leher3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));          
      if (pieces[0].equals("leherv4"))
          garisLeher.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));         
      if (pieces[0].equals("leherv5"))
          garisLeher2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
        
      if (pieces[0].equals("lenganv1"))
          lengan1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));          
      if (pieces[0].equals("lenganv2"))
          lengan2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));         
      if (pieces[0].equals("lenganv3"))
          lengan3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));       
      if (pieces[0].equals("lenganv4"))
          garisLengan.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));         
      if (pieces[0].equals("lenganv5"))
          garisLengan2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
        
      if (pieces[0].equals("gaunv1"))
          gaun1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));          
      if (pieces[0].equals("gaunv2"))
          gaun2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));         
      if (pieces[0].equals("gaunv3"))
          gaun3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));          
      if (pieces[0].equals("gaunv4"))
          garisGaun.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));         
      if (pieces[0].equals("gaunv5"))
          garisGaun2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));    
        
      if (pieces[0].equals("celanav1"))
          celana1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));          
      if (pieces[0].equals("celanav2"))
          celana2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));         
      if (pieces[0].equals("celanav3"))
          celana3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));          
      if (pieces[0].equals("celanav4"))
          garisCelana.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("celanav5"))
          garisCelana2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2])));            
  
      if (pieces[0].equals("atasanlkv1"))
          atasanlk1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2])));          
      if (pieces[0].equals("atasanlkv2"))
          atasanlk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2])));         
      if (pieces[0].equals("atasanlkv3"))
          atasanlk3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2])));          
      if (pieces[0].equals("atasanlkv4"))
          garisAtasanlk.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2])));         
      if (pieces[0].equals("atasanlkv5"))
          garisAtasanlk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2])));    
        
      if (pieces[0].equals("leherlkv1"))
          leherlk1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2])));          
      if (pieces[0].equals("leherlkv2"))
          leherlk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2])));         
      if (pieces[0].equals("leherlkv3"))
          leherlk3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));          
      if (pieces[0].equals("leherlkv4"))
          garisLeherlk.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("leherlkv5"))
          garisLeherlk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
      
      if (pieces[0].equals("lenganlkv1"))
          lenganlk1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("lenganlkv2"))
          lenganlk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));   
      if (pieces[0].equals("lenganlkv3"))
          lenganlk3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));          
      if (pieces[0].equals("lenganlkv4"))
          garisLenganlk.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));         
      if (pieces[0].equals("lenganlkv5"))
          garisLenganlk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) )); 
        
      if (pieces[0].equals("celanalkv1"))
          celanalk1.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("celanalkv2"))
          celanalk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));        
      if (pieces[0].equals("celanalkv3"))
          celanalk3.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));          
      if (pieces[0].equals("celanalkv4"))
          garisCelanalk.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
      if (pieces[0].equals("celanalkv5"))
          garisCelanalk2.add(new Node(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]) ));  
          
      //if (pieces[0].equals("f"))
      //  floors.add(new Floor(PApplet.parseFloat(pieces[1]), PApplet.parseFloat(pieces[2]), PApplet.parseFloat(pieces[3]), pieces[4]));
    }
    reader.close();
  }
  catch(IOException e) {
    e.printStackTrace();
  }
}
