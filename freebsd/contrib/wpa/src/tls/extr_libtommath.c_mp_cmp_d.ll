; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_mp_cmp_d.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_mp_cmp_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i64* }

@MP_NEG = common dso_local global i64 0, align 8
@MP_LT = common dso_local global i32 0, align 4
@MP_GT = common dso_local global i32 0, align 4
@MP_EQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @mp_cmp_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_cmp_d(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MP_NEG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MP_LT, align 4
  store i32 %12, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @MP_GT, align 4
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %13
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @MP_GT, align 4
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %20
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @MP_LT, align 4
  store i32 %39, i32* %3, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @MP_EQ, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %38, %28, %18, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
