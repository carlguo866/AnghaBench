; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_hostmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_hostmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.xaddr*)* @addr_hostmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_hostmask(i32 %0, i32 %1, %struct.xaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xaddr*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.xaddr* %2, %struct.xaddr** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %11 = call i32 @addr_netmask(i32 %8, i32 %9, %struct.xaddr* %10)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %15 = call i32 @addr_invert(%struct.xaddr* %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %19

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @addr_netmask(i32, i32, %struct.xaddr*) #1

declare dso_local i32 @addr_invert(%struct.xaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
