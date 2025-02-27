; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_msdosfs_deget_dotdot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_lookup.c_msdosfs_deget_dotdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.deget_dotdot = type { i32, i32 }
%struct.denode = type { i32 }
%struct.msdosfsmount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i8*, i32, %struct.vnode**)* @msdosfs_deget_dotdot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_deget_dotdot(%struct.mount* %0, i8* %1, i32 %2, %struct.vnode** %3) #0 {
  %5 = alloca %struct.mount*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vnode**, align 8
  %9 = alloca %struct.deget_dotdot*, align 8
  %10 = alloca %struct.denode*, align 8
  %11 = alloca %struct.msdosfsmount*, align 8
  %12 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.vnode** %3, %struct.vnode*** %8, align 8
  %13 = load %struct.mount*, %struct.mount** %5, align 8
  %14 = call %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount* %13)
  store %struct.msdosfsmount* %14, %struct.msdosfsmount** %11, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.deget_dotdot*
  store %struct.deget_dotdot* %16, %struct.deget_dotdot** %9, align 8
  %17 = load %struct.msdosfsmount*, %struct.msdosfsmount** %11, align 8
  %18 = load %struct.deget_dotdot*, %struct.deget_dotdot** %9, align 8
  %19 = getelementptr inbounds %struct.deget_dotdot, %struct.deget_dotdot* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.deget_dotdot*, %struct.deget_dotdot** %9, align 8
  %22 = getelementptr inbounds %struct.deget_dotdot, %struct.deget_dotdot* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @deget(%struct.msdosfsmount* %17, i32 %20, i32 %23, %struct.denode** %10)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.denode*, %struct.denode** %10, align 8
  %29 = call %struct.vnode* @DETOV(%struct.denode* %28)
  %30 = load %struct.vnode**, %struct.vnode*** %8, align 8
  store %struct.vnode* %29, %struct.vnode** %30, align 8
  br label %31

31:                                               ; preds = %27, %4
  %32 = load i32, i32* %12, align 4
  ret i32 %32
}

declare dso_local %struct.msdosfsmount* @VFSTOMSDOSFS(%struct.mount*) #1

declare dso_local i32 @deget(%struct.msdosfsmount*, i32, i32, %struct.denode**) #1

declare dso_local %struct.vnode* @DETOV(%struct.denode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
