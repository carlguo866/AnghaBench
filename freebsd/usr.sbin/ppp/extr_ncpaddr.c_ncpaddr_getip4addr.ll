; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_getip4addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncpaddr_getip4addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncpaddr = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncpaddr_getip4addr(%struct.ncpaddr* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ncpaddr*, align 8
  %5 = alloca i32*, align 8
  store %struct.ncpaddr* %0, %struct.ncpaddr** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %7 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.ncpaddr*, %struct.ncpaddr** %4, align 8
  %14 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %12, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
