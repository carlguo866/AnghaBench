; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_domain.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_populate_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32, i8*, i32, i32*, i32)* @populate_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @populate_domain(%struct.TYPE_3__* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  store i64 0, i64* %13, align 8
  br label %37

17:                                               ; preds = %6
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @PointerGetDatum(i32* null)
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @populate_record_field(i32 %20, i32 %23, i32 %26, i8* %27, i32 %28, i32 %29, i32* %30, i32* %12)
  store i64 %31, i64* %13, align 8
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @Assert(i32 %35)
  br label %37

37:                                               ; preds = %17, %16
  %38 = load i64, i64* %13, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @domain_check(i64 %38, i32 %39, i32 %40, i32* %42, i32 %43)
  %45 = load i64, i64* %13, align 8
  ret i64 %45
}

declare dso_local i64 @populate_record_field(i32, i32, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @domain_check(i64, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
