; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_vmnet_clone_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_vmnet_clone_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32 }

@TUN_VMNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_clone*, i8*)* @vmnet_clone_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmnet_clone_match(%struct.if_clone* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_clone*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.if_clone* %0, %struct.if_clone** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @tuntap_name2info(i8* %7, i32* null, i32* %6)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TUN_VMNET, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %18

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @tuntap_name2info(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
