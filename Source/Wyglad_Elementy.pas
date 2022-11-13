unit Wyglad_Elementy;

  // W tych funkcjach uwzgl�dni� wszystkie typy tutaj wyst�puj�ce.

  // zt_1 := Wyglad_Elementy.F_1( TGLCustomSceneObject(object_f) ) - odczyt warto�ci z obiektu, kt�ry nie jest obiektem Wyglad_Elementy nie powinien nic zepsu� (otrzyma si� chyba domy�lna pust� warto��).
  // Wyglad_Elementy.F_1( TGLCustomSceneObject(object_f), zt_1 ) - zapis warto�ci do obiektu, kt�ry nie jest obiektem Wyglad_Elementy mo�e zmodyfikowa� nieodpowiedni� cz�� pami�ci i co� uszkodzi�.

interface

uses
  GLObjects, GLGeomObjects, GLScene,
  System.Classes;

type
  TObiekt_Rodzaj = ( or_Brak, or_Amunicja, or_Amunicja__Obra�enia_Zasi�g, or_Kontener_Prymityw�w, or_L�d, or_�apacz_Samolot�w, or_Statek, or_Wzorzec ); // or_Wzorzec - obiekt b�d�cy wzorcem w p�tlach.

  TSt_GLCapsule = class( TGLCapsule )
  public
    dzi�b,
    radar,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp�yw_obra�enia,
    kolizja_wp�yw_pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCapsule

  TSt_GLCone = class( TGLCone )
  public
    dzi�b,
    radar,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp�yw_obra�enia,
    kolizja_wp�yw_pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCone

  TSt_GLCube = class( TGLCube )
  public
    dzi�b,
    radar,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp�yw_obra�enia,
    kolizja_wp�yw_pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCube

  TSt_GLCylinder = class( TGLCylinder )
  public
    dzi�b,
    radar,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp�yw_obra�enia,
    kolizja_wp�yw_pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLCylinder

  TSt_GLDummyCube = class( TGLDummyCube )
  public
    dzi�b,
    radar,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp�yw_obra�enia,
    kolizja_wp�yw_pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLDummyCube

  TSt_GLFrustrum = class( TGLFrustrum )
  public
    dzi�b,
    radar,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp�yw_obra�enia,
    kolizja_wp�yw_pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLFrustrum

  TSt_GLSphere = class( TGLSphere )
  public
    dzi�b,
    radar,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp�yw_obra�enia,
    kolizja_wp�yw_pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLSphere

  TSt_GLTorus = class( TGLTorus )
  public
    dzi�b,
    radar,
    �wiat�o,
    �wiat�o_dodatkowe
      : boolean;

    identyfikator_elementu : Int64;

    kolizja_wp�yw_obra�enia,
    kolizja_wp�yw_pr�dko��,
    punkty_�ycia
      : real;

    obiekt_rodzaj : TObiekt_Rodzaj;

    constructor Create( AOwner : TComponent );
  end;//---//TSt_GLTorus


// W tych funkcjach uwzgl�dni� wszystkie typy tutaj wyst�puj�ce.

function Dzi�b( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Punkty_�ycia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Radar( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function �wiat�o( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function �wiat�o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean; overload;
function Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64; overload;
function Kolizja_Wp�yw_Obra�enia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Kolizja_Wp�yw_Pr�dko��( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
function Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject ) : TObiekt_Rodzaj; overload;

procedure Dzi�b( const gl_custom_scene_object_f : TGLCustomSceneObject; const dzi�b_f : boolean ); overload;
procedure Punkty_�ycia( const gl_custom_scene_object_f : TGLCustomSceneObject; const punkty_�ycia_f : real ); overload;
procedure Radar( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_f : boolean ); overload;
procedure �wiat�o( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�o_f : boolean ); overload;
procedure �wiat�o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�o_dodatkowe_f : boolean ); overload;
procedure Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject; const identyfikator_elementu_f : Int64 ); overload;
procedure Kolizja_Wp�yw_Obra�enia( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw_obra�enia_f : real ); overload;
procedure Kolizja_Wp�yw_Pr�dko��( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw_pr�dko��_f : real ); overload;
procedure Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject; const obiekt_rodzaj_f : TObiekt_Rodzaj ); overload;

implementation


//Konstruktor klasy TSt_GLCapsule.
constructor TSt_GLCapsule.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw_obra�enia := 100;
  Self.kolizja_wp�yw_pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLCapsule.

//Konstruktor klasy TSt_GLCone.
constructor TSt_GLCone.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw_obra�enia := 100;
  Self.kolizja_wp�yw_pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLCone.

//Konstruktor klasy TSt_GLCube.
constructor TSt_GLCube.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw_obra�enia := 100;
  Self.kolizja_wp�yw_pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLCube.

//Konstruktor klasy TSt_GLCylinder.
constructor TSt_GLCylinder.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw_obra�enia := 100;
  Self.kolizja_wp�yw_pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLCylinder.

//Konstruktor klasy TSt_GLDummyCube.
constructor TSt_GLDummyCube.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw_obra�enia := 100;
  Self.kolizja_wp�yw_pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLDummyCube.

//Konstruktor klasy TSt_GLFrustrum.
constructor TSt_GLFrustrum.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw_obra�enia := 100;
  Self.kolizja_wp�yw_pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLFrustrum.

//Konstruktor klasy TSt_GLSphere.
constructor TSt_GLSphere.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw_obra�enia := 100;
  Self.kolizja_wp�yw_pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLSphere.

//Konstruktor klasy TSt_GLTorus.
constructor TSt_GLTorus.Create( AOwner : TComponent );
begin

  inherited;

  Self.dzi�b := false;
  Self.radar := false;
  Self.�wiat�o := false;
  Self.�wiat�o_dodatkowe := false;

  Self.identyfikator_elementu := 0;

  Self.kolizja_wp�yw_obra�enia := 100;
  Self.kolizja_wp�yw_pr�dko�� := 100;
  Self.punkty_�ycia := -1;

  Self.obiekt_rodzaj := or_Brak;

end;//---//Konstruktor klasy TSt_GLTorus.

//Funkcja Dzi�b().
function Dzi�b( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).dzi�b
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).dzi�b;

end;//---//Funkcja Dzi�b().

//Funkcja Punkty_�ycia().
function Punkty_�ycia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real; overload;
begin

  Result := -1;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).punkty_�ycia
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).punkty_�ycia;

end;//---//Funkcja Punkty_�ycia().

//Funkcja Radar().
function Radar( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).radar
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).radar;

end;//---//Funkcja Radar().

//Funkcja �wiat�o().
function �wiat�o( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).�wiat�o
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).�wiat�o;

end;//---//Funkcja �wiat�o().

//Funkcja �wiat�o_Dodatkowe().
function �wiat�o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject ) : boolean;
begin

  Result := false;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).�wiat�o_dodatkowe
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).�wiat�o_dodatkowe;

end;//---//Funkcja �wiat�o_Dodatkowe().

//Funkcja Kolizja_Wp�yw_Obra�enia().
function Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject ) : Int64;
begin

  Result := -1;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).identyfikator_elementu
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).identyfikator_elementu;

end;//---//Funkcja Kolizja_Wp�yw_Obra�enia().

//Funkcja Kolizja_Wp�yw_Obra�enia().
function Kolizja_Wp�yw_Obra�enia( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia;

end;//---//Funkcja Kolizja_Wp�yw_Obra�enia().

//Funkcja Kolizja_Wp�yw_Pr�dko��().
function Kolizja_Wp�yw_Pr�dko��( const gl_custom_scene_object_f : TGLCustomSceneObject ) : real;
begin

  Result := 0;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko��
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko��;

end;//---//Funkcja Kolizja_Wp�yw_Pr�dko��().

//Funkcja Obiekt_Rodzaj().
function Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject ) : TObiekt_Rodzaj;
begin

  Result := or_Brak;

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    Result := TSt_GLCapsule(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    Result := TSt_GLCone(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    Result := TSt_GLCube(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    Result := TSt_GLCylinder(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    Result := TSt_GLDummyCube(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    Result := TSt_GLFrustrum(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    Result := TSt_GLSphere(gl_custom_scene_object_f).obiekt_rodzaj
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    Result := TSt_GLTorus(gl_custom_scene_object_f).obiekt_rodzaj;

end;//---//Funkcja Obiekt_Rodzaj().

//Funkcja Dzi�b().
procedure Dzi�b( const gl_custom_scene_object_f : TGLCustomSceneObject; const dzi�b_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).dzi�b := dzi�b_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).dzi�b := dzi�b_f;

end;//---//Funkcja Dzi�b().

//Funkcja Punkty_�ycia().
procedure Punkty_�ycia( const gl_custom_scene_object_f : TGLCustomSceneObject; const punkty_�ycia_f : real ); overload;
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).punkty_�ycia := punkty_�ycia_f;

end;//---//Funkcja Punkty_�ycia().

//Funkcja Radar().
procedure Radar( const gl_custom_scene_object_f : TGLCustomSceneObject; const radar_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).radar := radar_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).radar := radar_f;

end;//---//Funkcja Radar().

//Funkcja �wiat�o().
procedure �wiat�o( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�o_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).�wiat�o := �wiat�o_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).�wiat�o := �wiat�o_f;

end;//---//Funkcja �wiat�o().

//Funkcja �wiat�o_Dodatkowe().
procedure �wiat�o_Dodatkowe( const gl_custom_scene_object_f : TGLCustomSceneObject; const �wiat�o_dodatkowe_f : boolean );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).�wiat�o_dodatkowe := �wiat�o_dodatkowe_f;

end;//---//Funkcja �wiat�o_Dodatkowe().

//Funkcja Kolizja_Wp�yw_Obra�enia().
procedure Identyfikator_Elementu( const gl_custom_scene_object_f : TGLCustomSceneObject; const identyfikator_elementu_f : Int64 );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).identyfikator_elementu := identyfikator_elementu_f;

end;//---//Funkcja Kolizja_Wp�yw_Obra�enia().

//Funkcja Kolizja_Wp�yw_Obra�enia().
procedure Kolizja_Wp�yw_Obra�enia( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw_obra�enia_f : real );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia := kolizja_wp�yw_obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia := kolizja_wp�yw_obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia := kolizja_wp�yw_obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia := kolizja_wp�yw_obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia := kolizja_wp�yw_obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia := kolizja_wp�yw_obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia := kolizja_wp�yw_obra�enia_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw_obra�enia := kolizja_wp�yw_obra�enia_f;

end;//---//Funkcja Kolizja_Wp�yw_Obra�enia().

//Funkcja Kolizja_Wp�yw_Pr�dko��().
procedure Kolizja_Wp�yw_Pr�dko��( const gl_custom_scene_object_f : TGLCustomSceneObject; const kolizja_wp�yw_pr�dko��_f : real );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko�� := kolizja_wp�yw_pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko�� := kolizja_wp�yw_pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko�� := kolizja_wp�yw_pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko�� := kolizja_wp�yw_pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko�� := kolizja_wp�yw_pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko�� := kolizja_wp�yw_pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko�� := kolizja_wp�yw_pr�dko��_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).kolizja_wp�yw_pr�dko�� := kolizja_wp�yw_pr�dko��_f;

end;//---//Funkcja Kolizja_Wp�yw_Pr�dko��().

//Funkcja Obiekt_Rodzaj().
procedure Obiekt_Rodzaj( const gl_custom_scene_object_f : TGLCustomSceneObject; const obiekt_rodzaj_f : TObiekt_Rodzaj );
begin

  if   ( gl_custom_scene_object_f = nil )
    or (  not Assigned( gl_custom_scene_object_f )  ) then
    Exit;

  if gl_custom_scene_object_f is TSt_GLCapsule then
    TSt_GLCapsule(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLCone then
    TSt_GLCone(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLCube then
    TSt_GLCube(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLCylinder then
    TSt_GLCylinder(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLDummyCube then
    TSt_GLDummyCube(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLFrustrum then
    TSt_GLFrustrum(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLSphere then
    TSt_GLSphere(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f
  else
  if gl_custom_scene_object_f is TSt_GLTorus then
    TSt_GLTorus(gl_custom_scene_object_f).obiekt_rodzaj := obiekt_rodzaj_f;

end;//---//Funkcja Obiekt_Rodzaj().

end.
