; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_adddatum.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_plpgsql_adddatum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@plpgsql_nDatums = common dso_local global i32 0, align 4
@datums_alloc = common dso_local global i32 0, align 4
@plpgsql_Datums = common dso_local global %struct.TYPE_6__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @plpgsql_adddatum(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load i32, i32* @plpgsql_nDatums, align 4
  %4 = load i32, i32* @datums_alloc, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* @datums_alloc, align 4
  %8 = mul nsw i32 %7, 2
  store i32 %8, i32* @datums_alloc, align 4
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @plpgsql_Datums, align 8
  %10 = load i32, i32* @datums_alloc, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = trunc i64 %12 to i32
  %14 = call %struct.TYPE_6__** @repalloc(%struct.TYPE_6__** %9, i32 %13)
  store %struct.TYPE_6__** %14, %struct.TYPE_6__*** @plpgsql_Datums, align 8
  br label %15

15:                                               ; preds = %6, %1
  %16 = load i32, i32* @plpgsql_nDatums, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @plpgsql_Datums, align 8
  %21 = load i32, i32* @plpgsql_nDatums, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @plpgsql_nDatums, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 %23
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %24, align 8
  ret void
}

declare dso_local %struct.TYPE_6__** @repalloc(%struct.TYPE_6__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
