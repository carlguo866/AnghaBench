; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ip6.c_l2tp_ip6_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @l2tp_ip6_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_ip6_disconnect(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sock*, %struct.sock** %4, align 8
  %7 = load i32, i32* @SOCK_ZAPPED, align 4
  %8 = call i64 @sock_flag(%struct.sock* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__udp_disconnect(%struct.sock* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @__udp_disconnect(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
