; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pcache.c_sqlite3PcacheShutdown.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pcache.c_sqlite3PcacheShutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 (i32)* }

@sqlite3GlobalConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sqlite3PcacheShutdown() #0 {
  %1 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sqlite3GlobalConfig, i32 0, i32 0, i32 1), align 8
  %2 = icmp ne i32 (i32)* %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sqlite3GlobalConfig, i32 0, i32 0, i32 1), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %6 = call i32 %4(i32 %5)
  br label %7

7:                                                ; preds = %3, %0
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
