; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_sqlite3_value_type.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_sqlite3_value_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@sqlite3_value_type.aType = internal constant [32 x i32] [i32 132, i32 129, i32 128, i32 129, i32 130, i32 129, i32 130, i32 129, i32 131, i32 129, i32 131, i32 129, i32 130, i32 129, i32 130, i32 129, i32 132, i32 129, i32 128, i32 129, i32 130, i32 129, i32 130, i32 129, i32 131, i32 129, i32 131, i32 129, i32 130, i32 129, i32 130, i32 129], align 16
@MEM_AffMask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_value_type(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MEM_AffMask, align 8
  %7 = and i64 %5, %6
  %8 = getelementptr inbounds [32 x i32], [32 x i32]* @sqlite3_value_type.aType, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
