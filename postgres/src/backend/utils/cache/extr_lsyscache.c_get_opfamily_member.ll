; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_opfamily_member.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_opfamily_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@AMOPSTRATEGY = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_opfamily_member(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @AMOPSTRATEGY, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ObjectIdGetDatum(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ObjectIdGetDatum(i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @Int16GetDatum(i32 %20)
  %22 = call i32 @SearchSysCache4(i32 %13, i32 %15, i32 %17, i32 %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @HeapTupleIsValid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @InvalidOid, align 4
  store i32 %27, i32* %5, align 4
  br label %38

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @GETSTRUCT(i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %11, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ReleaseSysCache(i32 %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %28, %26
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @SearchSysCache4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @Int16GetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
