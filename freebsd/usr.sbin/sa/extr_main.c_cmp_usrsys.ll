; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_cmp_usrsys.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/sa/extr_main.c_cmp_usrsys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cmdinfo = type { double, double, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.TYPE_4__*)* @cmp_usrsys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_usrsys(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.cmdinfo, align 8
  %7 = alloca %struct.cmdinfo, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memcpy(%struct.cmdinfo* %6, i32 %12, i32 24)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @memcpy(%struct.cmdinfo* %7, i32 %16, i32 24)
  %18 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fadd double %19, %21
  store double %22, double* %8, align 8
  %23 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fadd double %24, %26
  store double %27, double* %9, align 8
  %28 = load double, double* %8, align 8
  %29 = load double, double* %9, align 8
  %30 = fcmp olt double %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load double, double* %8, align 8
  %34 = load double, double* %9, align 8
  %35 = fcmp oeq double %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %6, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.cmdinfo, %struct.cmdinfo* %7, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @cmp_comm(i32 %38, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %36, %31
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @memcpy(%struct.cmdinfo*, i32, i32) #1

declare dso_local i32 @cmp_comm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
