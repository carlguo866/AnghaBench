; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_GetTypeOwner.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_type.c_GetTypeOwner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@TYPEOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @GetTypeOwner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetTypeOwner(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @InvalidOid, align 4
  store i32 %6, i32* %3, align 4
  store i32* null, i32** %4, align 8
  %7 = load i32, i32* @TYPEOID, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @ObjectIdGetDatum(i32 %8)
  %10 = call i32* @SearchSysCache1(i32 %7, i32 %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i64 @HeapTupleIsValid(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @GETSTRUCT(i32* %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %5, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ReleaseSysCache(i32* %22)
  br label %24

24:                                               ; preds = %14, %1
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32* @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i64 @HeapTupleIsValid(i32*) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i32 @ReleaseSysCache(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
