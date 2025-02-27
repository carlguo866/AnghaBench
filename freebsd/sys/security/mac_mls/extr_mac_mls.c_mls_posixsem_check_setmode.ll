; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_posixsem_check_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_mls/extr_mac_mls.c_mls_posixsem_check_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.ksem = type { i32 }
%struct.label = type { i32 }
%struct.mac_mls = type { i32 }

@mls_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.ksem*, %struct.label*, i32)* @mls_posixsem_check_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mls_posixsem_check_setmode(%struct.ucred* %0, %struct.ksem* %1, %struct.label* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.ksem*, align 8
  %8 = alloca %struct.label*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mac_mls*, align 8
  %11 = alloca %struct.mac_mls*, align 8
  store %struct.ucred* %0, %struct.ucred** %6, align 8
  store %struct.ksem* %1, %struct.ksem** %7, align 8
  store %struct.label* %2, %struct.label** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @mls_enabled, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %29

15:                                               ; preds = %4
  %16 = load %struct.ucred*, %struct.ucred** %6, align 8
  %17 = getelementptr inbounds %struct.ucred, %struct.ucred* %16, i32 0, i32 0
  %18 = load %struct.label*, %struct.label** %17, align 8
  %19 = call %struct.mac_mls* @SLOT(%struct.label* %18)
  store %struct.mac_mls* %19, %struct.mac_mls** %10, align 8
  %20 = load %struct.label*, %struct.label** %8, align 8
  %21 = call %struct.mac_mls* @SLOT(%struct.label* %20)
  store %struct.mac_mls* %21, %struct.mac_mls** %11, align 8
  %22 = load %struct.mac_mls*, %struct.mac_mls** %11, align 8
  %23 = load %struct.mac_mls*, %struct.mac_mls** %10, align 8
  %24 = call i32 @mls_dominate_effective(%struct.mac_mls* %22, %struct.mac_mls* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @EACCES, align 4
  store i32 %27, i32* %5, align 4
  br label %29

28:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %26, %14
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.mac_mls* @SLOT(%struct.label*) #1

declare dso_local i32 @mls_dominate_effective(%struct.mac_mls*, %struct.mac_mls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
