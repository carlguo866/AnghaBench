; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_gettgt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_gettgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoetgt = type { i32 }
%struct.aoedev = type { i32, %struct.aoetgt** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aoetgt* (%struct.aoedev*, i8*)* @gettgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aoetgt* @gettgt(%struct.aoedev* %0, i8* %1) #0 {
  %3 = alloca %struct.aoetgt*, align 8
  %4 = alloca %struct.aoedev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aoetgt**, align 8
  %7 = alloca %struct.aoetgt**, align 8
  store %struct.aoedev* %0, %struct.aoedev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %9 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %8, i32 0, i32 1
  %10 = load %struct.aoetgt**, %struct.aoetgt*** %9, align 8
  store %struct.aoetgt** %10, %struct.aoetgt*** %6, align 8
  %11 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %12 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %13 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %11, i64 %15
  store %struct.aoetgt** %16, %struct.aoetgt*** %7, align 8
  br label %17

17:                                               ; preds = %39, %2
  %18 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %19 = load %struct.aoetgt**, %struct.aoetgt*** %7, align 8
  %20 = icmp ult %struct.aoetgt** %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %23 = load %struct.aoetgt*, %struct.aoetgt** %22, align 8
  %24 = icmp ne %struct.aoetgt* %23, null
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %42

27:                                               ; preds = %25
  %28 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %29 = load %struct.aoetgt*, %struct.aoetgt** %28, align 8
  %30 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @memcmp(i32 %31, i8* %32, i32 4)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %37 = load %struct.aoetgt*, %struct.aoetgt** %36, align 8
  store %struct.aoetgt* %37, %struct.aoetgt** %3, align 8
  br label %43

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %41 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %40, i32 1
  store %struct.aoetgt** %41, %struct.aoetgt*** %6, align 8
  br label %17

42:                                               ; preds = %25
  store %struct.aoetgt* null, %struct.aoetgt** %3, align 8
  br label %43

43:                                               ; preds = %42, %35
  %44 = load %struct.aoetgt*, %struct.aoetgt** %3, align 8
  ret %struct.aoetgt* %44
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
