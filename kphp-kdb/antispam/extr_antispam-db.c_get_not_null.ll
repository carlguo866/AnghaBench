; ModuleID = '/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db.c_get_not_null.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/antispam/extr_antispam-db.c_get_not_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__** (%struct.TYPE_4__*, i32)* @get_not_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__** @get_not_null(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__**, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = bitcast i64* %12 to %struct.TYPE_4__**
  store %struct.TYPE_4__** %13, %struct.TYPE_4__*** %3, align 8
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_4__**
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %18, i64 %20
  store %struct.TYPE_4__** %21, %struct.TYPE_4__*** %3, align 8
  br label %22

22:                                               ; preds = %14, %10
  %23 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %3, align 8
  ret %struct.TYPE_4__** %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
