; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_vnode_check_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_vnode_check_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { %struct.label* }
%struct.vnode = type { i32 }
%struct.label = type { i32 }

@MAGIC_CRED = common dso_local global i32 0, align 4
@MAGIC_VNODE = common dso_local global i32 0, align 4
@vnode_check_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.ucred*, %struct.vnode*, %struct.label*)* @test_vnode_check_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_vnode_check_read(%struct.ucred* %0, %struct.ucred* %1, %struct.vnode* %2, %struct.label* %3) #0 {
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.label*, align 8
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.ucred* %1, %struct.ucred** %6, align 8
  store %struct.vnode* %2, %struct.vnode** %7, align 8
  store %struct.label* %3, %struct.label** %8, align 8
  %9 = load %struct.ucred*, %struct.ucred** %5, align 8
  %10 = getelementptr inbounds %struct.ucred, %struct.ucred* %9, i32 0, i32 0
  %11 = load %struct.label*, %struct.label** %10, align 8
  %12 = load i32, i32* @MAGIC_CRED, align 4
  %13 = call i32 @LABEL_CHECK(%struct.label* %11, i32 %12)
  %14 = load %struct.ucred*, %struct.ucred** %6, align 8
  %15 = icmp ne %struct.ucred* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.ucred*, %struct.ucred** %6, align 8
  %18 = getelementptr inbounds %struct.ucred, %struct.ucred* %17, i32 0, i32 0
  %19 = load %struct.label*, %struct.label** %18, align 8
  %20 = load i32, i32* @MAGIC_CRED, align 4
  %21 = call i32 @LABEL_CHECK(%struct.label* %19, i32 %20)
  br label %22

22:                                               ; preds = %16, %4
  %23 = load %struct.label*, %struct.label** %8, align 8
  %24 = load i32, i32* @MAGIC_VNODE, align 4
  %25 = call i32 @LABEL_CHECK(%struct.label* %23, i32 %24)
  %26 = load i32, i32* @vnode_check_read, align 4
  %27 = call i32 @COUNTER_INC(i32 %26)
  ret i32 0
}

declare dso_local i32 @LABEL_CHECK(%struct.label*, i32) #1

declare dso_local i32 @COUNTER_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
