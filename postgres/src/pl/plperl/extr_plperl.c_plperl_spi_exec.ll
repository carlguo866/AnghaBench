; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_exec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plperl/extr_plperl.c_plperl_spi_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@current_call_data = common dso_local global %struct.TYPE_7__* null, align 8
@SPI_tuptable = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @plperl_spi_exec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 (...) @check_spi_usage_allowed()
  %13 = call i32 @BeginInternalSubTransaction(i32* null)
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @MemoryContextSwitchTo(i32 %14)
  %16 = call i32 (...) @PG_TRY()
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = call i32 @pg_verifymbstr(i8* %17, i32 %19, i32 0)
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current_call_data, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @SPI_execute(i8* %21, i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @SPI_tuptable, align 4
  %30 = load i32, i32* @SPI_processed, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32* @plperl_spi_execute_fetch_result(i32 %29, i32 %30, i32 %31)
  store i32* %32, i32** %5, align 8
  %33 = call i32 (...) @ReleaseCurrentSubTransaction()
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @MemoryContextSwitchTo(i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* @CurrentResourceOwner, align 4
  %37 = call i32 (...) @PG_CATCH()
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @MemoryContextSwitchTo(i32 %38)
  %40 = call %struct.TYPE_6__* (...) @CopyErrorData()
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %9, align 8
  %41 = call i32 (...) @FlushErrorState()
  %42 = call i32 (...) @RollbackAndReleaseCurrentSubTransaction()
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @MemoryContextSwitchTo(i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* @CurrentResourceOwner, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @croak_cstr(i32 %48)
  ret i32* null
}

declare dso_local i32 @check_spi_usage_allowed(...) #1

declare dso_local i32 @BeginInternalSubTransaction(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @pg_verifymbstr(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @SPI_execute(i8*, i32, i32) #1

declare dso_local i32* @plperl_spi_execute_fetch_result(i32, i32, i32) #1

declare dso_local i32 @ReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local %struct.TYPE_6__* @CopyErrorData(...) #1

declare dso_local i32 @FlushErrorState(...) #1

declare dso_local i32 @RollbackAndReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @croak_cstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
