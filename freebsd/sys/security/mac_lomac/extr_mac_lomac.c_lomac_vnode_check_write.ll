; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_vnode_check_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }
%struct.mac_lomac = type { i32 }

@lomac_enabled = common dso_local global i32 0, align 4
@revocation_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.ucred*, %struct.vnode*, %struct.label*)* @lomac_vnode_check_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lomac_vnode_check_write(%struct.ucred* %0, %struct.ucred* %1, %struct.vnode* %2, %struct.label* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.label*, align 8
  %10 = alloca %struct.mac_lomac*, align 8
  %11 = alloca %struct.mac_lomac*, align 8
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store %struct.vnode* %2, %struct.vnode** %8, align 8
  store %struct.label* %3, %struct.label** %9, align 8
  %12 = load i32, i32* @lomac_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @revocation_enabled, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %4
  store i32 0, i32* %5, align 4
  br label %32

18:                                               ; preds = %14
  %19 = load %struct.ucred*, %struct.ucred** %6, align 8
  %20 = getelementptr inbounds %struct.ucred, %struct.ucred* %19, i32 0, i32 0
  %21 = load %struct.label*, %struct.label** %20, align 8
  %22 = call %struct.mac_lomac* @SLOT(%struct.label* %21)
  store %struct.mac_lomac* %22, %struct.mac_lomac** %10, align 8
  %23 = load %struct.label*, %struct.label** %9, align 8
  %24 = call %struct.mac_lomac* @SLOT(%struct.label* %23)
  store %struct.mac_lomac* %24, %struct.mac_lomac** %11, align 8
  %25 = load %struct.mac_lomac*, %struct.mac_lomac** %10, align 8
  %26 = load %struct.mac_lomac*, %struct.mac_lomac** %11, align 8
  %27 = call i32 @lomac_subject_dominate(%struct.mac_lomac* %25, %struct.mac_lomac* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @EACCES, align 4
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %29, %17
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_subject_dominate(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
