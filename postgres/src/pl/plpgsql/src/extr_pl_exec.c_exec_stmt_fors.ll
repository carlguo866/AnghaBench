; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_fors.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_exec.c_exec_stmt_fors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @exec_stmt_fors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_stmt_fors(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @exec_run_select(i32* %7, i32 %10, i32 0, i32* %5)
  %12 = load i32*, i32** %3, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = bitcast %struct.TYPE_3__* %13 to i32*
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @exec_for_query(i32* %12, i32* %14, i32 %15, i32 1)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @SPI_cursor_close(i32 %17)
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local i32 @exec_run_select(i32*, i32, i32, i32*) #1

declare dso_local i32 @exec_for_query(i32*, i32*, i32, i32) #1

declare dso_local i32 @SPI_cursor_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
