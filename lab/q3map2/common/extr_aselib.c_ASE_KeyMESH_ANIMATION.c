
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ faces; scalar_t__ vertexes; scalar_t__ tvertexes; } ;
typedef TYPE_3__ aseMesh_t ;
struct TYPE_10__ {size_t currentObject; TYPE_2__* objects; } ;
struct TYPE_7__ {scalar_t__ currentFrame; } ;
struct TYPE_8__ {TYPE_1__ anim; } ;


 TYPE_3__* ASE_GetCurrentMesh () ;
 int ASE_KeyMESH ;
 int ASE_ParseBracedBlock (int ) ;
 int Error (char*,...) ;
 scalar_t__ MAX_ASE_ANIMATION_FRAMES ;
 int VERBOSE (char*) ;
 TYPE_5__ ase ;
 int assert (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void ASE_KeyMESH_ANIMATION( const char *token ){
 aseMesh_t *pMesh = ASE_GetCurrentMesh();


 if ( !strcmp( token, "*MESH" ) ) {
  VERBOSE( ( "...found MESH\n" ) );
  assert( pMesh->faces == 0 );
  assert( pMesh->vertexes == 0 );
  assert( pMesh->tvertexes == 0 );
  memset( pMesh, 0, sizeof( *pMesh ) );

  ASE_ParseBracedBlock( ASE_KeyMESH );

  if ( ++ase.objects[ase.currentObject].anim.currentFrame == MAX_ASE_ANIMATION_FRAMES ) {
   Error( "Too many animation frames" );
  }
 }
 else
 {
  Error( "Unknown token '%s' while parsing MESH_ANIMATION", token );
 }
}
