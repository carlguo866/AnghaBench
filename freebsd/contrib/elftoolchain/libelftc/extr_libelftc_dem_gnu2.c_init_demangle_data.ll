; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_init_demangle_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu2.c_init_demangle_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32* }

@ENCODE_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @init_demangle_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_demangle_data(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %4 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %5 = icmp eq %struct.demangle_data* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %44

7:                                                ; preds = %1
  %8 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %9 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %11 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %13 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %12, i32 0, i32 2
  store i32 0, i32* %13, align 8
  %14 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %15 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %14, i32 0, i32 3
  store i32 0, i32* %15, align 4
  %16 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %17 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %16, i32 0, i32 4
  store i32 0, i32* %17, align 8
  %18 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %19 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %18, i32 0, i32 5
  store i32 0, i32* %19, align 4
  %20 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %21 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %24 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @ENCODE_FUNC, align 4
  %27 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %28 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %30 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %29, i32 0, i32 6
  %31 = call i32 @vector_str_init(i32* %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %44

34:                                               ; preds = %7
  %35 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %36 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %35, i32 0, i32 7
  %37 = call i32 @vector_str_init(i32* %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %41 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %40, i32 0, i32 6
  %42 = call i32 @vector_str_dest(i32* %41)
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %39, %33, %6
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @vector_str_init(i32*) #1

declare dso_local i32 @vector_str_dest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
