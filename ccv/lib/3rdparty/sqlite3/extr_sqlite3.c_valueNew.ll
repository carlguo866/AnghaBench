; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_valueNew.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_valueNew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.ValueNewStat4Ctx = type { i32, %struct.TYPE_11__**, i32, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32 }

@MEM_Null = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, %struct.ValueNewStat4Ctx*)* @valueNew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @valueNew(i32* %0, %struct.ValueNewStat4Ctx* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ValueNewStat4Ctx*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.ValueNewStat4Ctx* %1, %struct.ValueNewStat4Ctx** %4, align 8
  %5 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %4, align 8
  %6 = call i32 @UNUSED_PARAMETER(%struct.ValueNewStat4Ctx* %5)
  %7 = load i32*, i32** %3, align 8
  %8 = call %struct.TYPE_10__* @sqlite3ValueNew(i32* %7)
  ret %struct.TYPE_10__* %8
}

declare dso_local i32 @UNUSED_PARAMETER(%struct.ValueNewStat4Ctx*) #1

declare dso_local %struct.TYPE_10__* @sqlite3ValueNew(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
