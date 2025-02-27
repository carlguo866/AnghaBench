; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_vnode_to_kinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_export_vnode_to_kinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.kinfo_file = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@KF_TYPE_VNODE = common dso_local global i32 0, align 4
@KF_ATTR_VALID = common dso_local global i32 0, align 4
@KERN_FILEDESC_PACK_KINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, i32, i32, %struct.kinfo_file*, i32)* @export_vnode_to_kinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_vnode_to_kinfo(%struct.vnode* %0, i32 %1, i32 %2, %struct.kinfo_file* %3, i32 %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kinfo_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.kinfo_file* %3, %struct.kinfo_file** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %13 = call i32 @bzero(%struct.kinfo_file* %12, i32 32)
  %14 = load i32, i32* @KF_TYPE_VNODE, align 4
  %15 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %16 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 4
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %19 = call i32 @vn_fill_kinfo_vnode(%struct.vnode* %17, %struct.kinfo_file* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i32, i32* @KF_ATTR_VALID, align 4
  %24 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %25 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %5
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @xlate_fflags(i32 %29)
  %31 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %32 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %34 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %33, i32 0, i32 4
  %35 = call i32 @cap_rights_init(i32* %34)
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %38 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %40 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 4
  %41 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %42 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %41, i32 0, i32 2
  store i32 -1, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @KERN_FILEDESC_PACK_KINFO, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %28
  %48 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %49 = call i32 @pack_kinfo(%struct.kinfo_file* %48)
  br label %54

50:                                               ; preds = %28
  %51 = call i32 @roundup2(i32 32, i32 4)
  %52 = load %struct.kinfo_file*, %struct.kinfo_file** %9, align 8
  %53 = getelementptr inbounds %struct.kinfo_file, %struct.kinfo_file* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.vnode*, %struct.vnode** %6, align 8
  %56 = call i32 @vrele(%struct.vnode* %55)
  ret void
}

declare dso_local i32 @bzero(%struct.kinfo_file*, i32) #1

declare dso_local i32 @vn_fill_kinfo_vnode(%struct.vnode*, %struct.kinfo_file*) #1

declare dso_local i32 @xlate_fflags(i32) #1

declare dso_local i32 @cap_rights_init(i32*) #1

declare dso_local i32 @pack_kinfo(%struct.kinfo_file*) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
