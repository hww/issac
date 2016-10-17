(in-package :issac)

;; Split up the newton stuff

;;
;; CREATE FUNCS (sort em)
newtoncreatebox
newtoncreatecapsule
newtoncreatechamfercylinder
newtoncreatecompoundcollision
newtoncreatecone
newtoncreateconvexhull
newtoncreatecylinder
newtoncreatedeformablebody
newtoncreatedynamicbody
newtoncreateex
newtoncreateheightfieldcollision
newtoncreatekinematicbody
newtoncreatenull
newtoncreatescenecollision
newtoncreatesphere
newtoncreatetreecollision
newtoncreateusermeshcollision

;;
;; GETS 'n' SETS (sort em)

newtongeteulerangle
newtonseteulerangle


newtongetmemoryused
newtongetnumberofsubsteps
newtongetstacksize

newtonsetmemorysystem
newtonsetnumberofsubsteps
newtonsetperformanceclock


newtonsetstacksize
newtonsettransform


;;
;; BODY
newtonbody
newtonbodyaddforce
newtonbodyaddimpulse
newtonbodyaddtorque
newtonbodyapplyimpulsearray
newtonbodyapplyimpulsepair
newtonbodycalculateinversedynamicsforce
newtonbodydestructor
newtonbodygetaabb
newtonbodygetangulardamping
newtonbodygetautosleep
newtonbodygetcentreofmass
newtonbodygetcollidable
newtonbodygetcollision
newtonbodygetcontinuouscollisionmode
newtonbodygetfirstjoint
newtonbodygetforce
newtonbodygetforceacc
newtonbodygetid
newtonbodygetinertiamatrix
newtonbodygetinvinertiamatrix
newtonbodygetinvmass
newtonbodygetjointrecursivecollision
newtonbodygetlineardamping
newtonbodygetmass
newtonbodygetmaterialgroupid
newtonbodygetmatrix
newtonbodygetmaxrotationperstep
newtonbodygetnextcontactjoint
newtonbodygetnextjoint
newtonbodygetomega
newtonbodygetpointvelocity
newtonbodygetposition
newtonbodygetrotation
newtonbodygetsimulationstate
newtonbodygetskeleton
newtonbodygetsleepstate
newtonbodygettorque
newtonbodygettorqueacc
newtonbodygetuserdata
newtonbodygetvelocity
newtonbodygetworld
newtonbodyintegratevelocity
newtonbodyiterator
newtonbodysetangulardamping
newtonbodysetautosleep
newtonbodysetcentreofmass
newtonbodysetcollidable
newtonbodysetcollision
newtonbodysetcollisionscale
newtonbodysetcontinuouscollisionmode
newtonbodysetfullmassmatrix
newtonbodysetjointrecursivecollision
newtonbodysetlineardamping
newtonbodysetmassmatrix
newtonbodysetmassproperties
newtonbodysetmaterialgroupid
newtonbodysetmatrix
newtonbodysetmatrixnosleep
newtonbodysetmatrixrecursive
newtonbodysetmaxrotationperstep
newtonbodysetomega
newtonbodysetomeganosleep
newtonbodysetsimulationstate
newtonbodysetsleepstate
newtonbodysettorque
newtonbodysetvelocity
newtonbodysetvelocitynosleep

;;
;; COLLISION
newtoncollision
newtoncollisionaggregateaddbody
newtoncollisionaggregatecreate
newtoncollisionaggregatedestroy
newtoncollisionaggregategetselfcollision
newtoncollisionaggregateremovebody
newtoncollisionaggregatesetselfcollision
newtoncollisioncalculateaabb
newtoncollisionclosestpoint
newtoncollisioncollide
newtoncollisioncollidecontinue
newtoncollisiondatapointer
newtoncollisiongetinfo
newtoncollisiongetmatrix
newtoncollisiongetmode
newtoncollisiongetparentinstance
newtoncollisiongetscale
newtoncollisiongetskinthickness
newtoncollisiongetsubcollisionhandle
newtoncollisiongettype
newtoncollisiongetuserdata
newtoncollisiongetuserdata1
newtoncollisiongetuserid
newtoncollisioninforecord
newtoncollisionintersectiontest
newtoncollisionisconvexshape
newtoncollisionisstaticshape
newtoncollisioniterator
newtoncollisionpointdistance


newtoncollisionsetmatrix
newtoncollisionsetmode
newtoncollisionsetscale
newtoncollisionsetuserdata
newtoncollisionsetuserdata1
newtoncollisionsetuserid
newtoncollisionsupportvertex
newtoncollisiontreeparam
;;
;; COMPOUND COLLISION
newtoncompoundcollisionaddsubcollision
newtoncompoundcollisionbeginaddremove
newtoncompoundcollisionendaddremove
newtoncompoundcollisiongetcollisionfromnode
newtoncompoundcollisiongetfirstnode
newtoncompoundcollisiongetnextnode
newtoncompoundcollisiongetnodebyindex
newtoncompoundcollisiongetnodeindex
newtoncompoundcollisionparam
newtoncompoundcollisionremovesubcollision
newtoncompoundcollisionremovesubcollisionbyindex
newtoncompoundcollisionsetsubcollisionmatrix

;;
;; CONTACT
newtoncontactgetcollision0
newtoncontactgetcollision1
newtoncontactgetcollisionid0
newtoncontactgetcollisionid1
newtoncontactgetmaterial
newtoncontactjointgetclosestdistance
newtoncontactjointgetcontactcount
newtoncontactjointgetfirstcontact
newtoncontactjointgetnextcontact
newtoncontactjointremovecontact
newtoncontactsprocess

;;
;; CONSTRAINT
newtonconstraintcreateball
newtonconstraintcreatecorkscrew
newtonconstraintcreatehinge
newtonconstraintcreateslider
newtonconstraintcreateuniversal
newtonconstraintcreateupvector
newtonconstraintcreateuserjoint
newtonconstraintdestructor



newton-deformable-body
newton-dynamic-body
newton-kinematic-body
newton-major-version
newton-minor-version
newtonalloc
newtonallocmemory
newtonapplyforceandtorque

newtonballgetjointforce
newtonballgetjointomega
newtonballsetconelimits


newtonboxparam
newtoncalculatespringdamperacceleration
newtoncapsuleparam
newtonchamfercylinderparam
newtonclothpatchmaterial

newtonconeparam

newtonconvexcollisioncalculatebuoyancyacceleration
newtonconvexcollisioncalculateinertialmatrix
newtonconvexcollisioncalculatevolume
newtonconvexhullgetfaceindices
newtonconvexhullgetvertexdata
newtonconvexhullparam

newtoncorkscrewcalculatestopaccel
newtoncorkscrewcalculatestopalpha
newtoncorkscrewgetjointforce
newtoncorkscrewgetjointomega
newtoncorkscrewgetjointposit
newtoncorkscrewgetjointveloc


newtoncylinderparam

newtondeformablemeshbeginconfiguration
newtondeformablemeshconstraintparticle
newtondeformablemeshcreateclusters
newtondeformablemeshendconfiguration
newtondeformablemeshgetfirstsegment
newtondeformablemeshgetnextsegment
newtondeformablemeshgetparticlecount
newtondeformablemeshgetparticleposition
newtondeformablemeshgetvertexcount
newtondeformablemeshgetvertexstreams
newtondeformablemeshparam
newtondeformablemeshsegment
newtondeformablemeshsegmentgetindexcount
newtondeformablemeshsegmentgetindexlist
newtondeformablemeshsegmentgetmaterialid
newtondeformablemeshunconstraintparticle
newtondeformablemeshupdaterendernormals


newtondestroybody
newtondestroycollision
newtondestroyjoint


newtonfracturecompoundcollisiononemitchunk
newtonfracturecompoundcollisiononemitcompoundfractured
newtonfracturedcompoundcollisiongetvertexnormals
newtonfracturedcompoundcollisiongetvertexpositions
newtonfracturedcompoundcollisiongetvertexuvs
newtonfracturedcompoundgetfirstsubmesh
newtonfracturedcompoundgetmainmesh
newtonfracturedcompoundgetnextsubmesh
newtonfracturedcompoundisnodefreetodetach
newtonfracturedcompoundmeshpart
newtonfracturedcompoundmeshpartgetfirstsegment
newtonfracturedcompoundmeshpartgetindexcount
newtonfracturedcompoundmeshpartgetindexstream
newtonfracturedcompoundmeshpartgetmaterial
newtonfracturedcompoundmeshpartgetnextsegment
newtonfracturedcompoundneighbornodelist
newtonfracturedcompoundplaneclip
newtonfracturedcompoundsetcallbacks

newtonfree
newtonfreememory



newtonheightfieldcollisionparam
newtonhingecalculatestopalpha
newtonhingegetjointforce
newtonhingegetjointomega



newtonjobtask

newtonjoint
newtonjointgetbody0
newtonjointgetbody1
newtonjointgetcollisionstate
newtonjointgetinfo
newtonjointgetstiffness
newtonjointgetuserdata
newtonjointisactive
newtonjointiterator
newtonjointrecord
newtonjointsetcollisionstate
newtonjointsetdestructor
newtonjointsetstiffness
newtonjointsetuserdata

newtonmaterial
newtonmaterialcontactrotatetangentdirections
newtonmaterialcreategroupid
newtonmaterialdestroyallgroupid
newtonmaterialgetbodycollidingshape
newtonmaterialgetcontactfaceattribute
newtonmaterialgetcontactforce
newtonmaterialgetcontactmaxnormalimpact
newtonmaterialgetcontactmaxtangentimpact
newtonmaterialgetcontactnormalspeed
newtonmaterialgetcontactpenetration
newtonmaterialgetcontactpositionandnormal
newtonmaterialgetcontacttangentdirections
newtonmaterialgetcontacttangentspeed
newtonmaterialgetdefaultgroupid
newtonmaterialgetmaterialpairuserdata
newtonmaterialgetuserdata
newtonmaterialsetcallbackuserdata
newtonmaterialsetcontactelasticity
newtonmaterialsetcontactfrictioncoef
newtonmaterialsetcontactfrictionstate
newtonmaterialsetcontactnormaldirection
newtonmaterialsetcontactposition
newtonmaterialsetcontactsoftness
newtonmaterialsetcontacttangentacceleration
newtonmaterialsetcontacttangentfriction
newtonmaterialsetdefaultcollidable
newtonmaterialsetdefaultelasticity
newtonmaterialsetdefaultfriction
newtonmaterialsetdefaultsoftness
newtonmaterialsetsurfacethickness

newtononaabboverlap


newtononcompoundsubcollisionaabboverlap
newtononcontactgeneration
newtonscenecollisionaddsubcollision
newtonscenecollisionbeginaddremove
newtonscenecollisionendaddremove
newtonscenecollisiongetcollisionfromnode
newtonscenecollisiongetfirstnode
newtonscenecollisiongetnextnode
newtonscenecollisiongetnodebyindex
newtonscenecollisiongetnodeindex
newtonscenecollisionparam
newtonscenecollisionremovesubcollision
newtonscenecollisionremovesubcollisionbyindex
newtonscenecollisionsetsubcollisionmatrix



newtonskeletonbonejacobian
newtonskeletonbonejacobianpair
newtonskeletoncontainer
newtonskeletoncontainerattachbone
newtonskeletoncontainerattachjointarray
newtonskeletoncontainercreate
newtonskeletoncontainerdelete
newtonskeletoncontainerfinalize
newtonskeletoncontainerfirstchild
newtonskeletoncontainergetbodyfromnode
newtonskeletoncontainergetparent
newtonskeletoncontainergetparentjointfromnode
newtonskeletoncontainergetroot
newtonskeletoncontainernextsibling
newtonskeletontdestructor

newtonslidercalculatestopaccel
newtonslidergetjointposit
newtonslidergetjointveloc
newtonsphereparam



newtontreecollisionaddface
newtontreecollisionbeginbuild
newtontreecollisiongetfaceattribute
newtontreecollisiongetvertexlisttrianglelistinaabb
newtontreecollisionsetfaceattribute

newtonuniversalcalculatestopalpha0
newtonuniversalcalculatestopalpha1
newtonuniversalgetjointangle1
newtonuniversalgetjointforce
newtonuniversalgetjointomega0
newtonuniversalgetjointomega1


newtonupvectorgetpin
newtonupvectorsetpin


newtonusercalculaterowzeroaccelaration

newtonusercontactpoint

newtonuserjoinrowscount

newtonuserjointaddangularrow
newtonuserjointaddgeneralrow
newtonuserjointaddlinearrow
newtonuserjointgetgeneralrow
newtonuserjointgetrowforce
newtonuserjointsetrowmaximumfriction
newtonuserjointsetrowminimumfriction
newtonuserjointsetrowspringdamperacceleration
newtonuserjointsetrowstiffness

newtonusermeshcollisionaabbtest
newtonusermeshcollisioncontinuousoverlaptest
newtonusermeshcollisiongetfacesinaabb
