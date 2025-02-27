; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i32, i32, i8, i8 }

@MPARSE_MDOC = common dso_local global i32 0, align 4
@MPARSE_MAN = common dso_local global i32 0, align 4
@roffce_lines = common dso_local global i64 0, align 8
@roffce_node = common dso_local global i32* null, align 8
@roffit_lines = common dso_local global i64 0, align 8
@roffit_macro = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roff_reset(%struct.roff* %0) #0 {
  %2 = alloca %struct.roff*, align 8
  store %struct.roff* %0, %struct.roff** %2, align 8
  %3 = load %struct.roff*, %struct.roff** %2, align 8
  %4 = call i32 @roff_free1(%struct.roff* %3)
  %5 = load %struct.roff*, %struct.roff** %2, align 8
  %6 = getelementptr inbounds %struct.roff, %struct.roff* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MPARSE_MDOC, align 4
  %9 = load i32, i32* @MPARSE_MAN, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = load %struct.roff*, %struct.roff** %2, align 8
  %13 = getelementptr inbounds %struct.roff, %struct.roff* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.roff*, %struct.roff** %2, align 8
  %15 = getelementptr inbounds %struct.roff, %struct.roff* %14, i32 0, i32 2
  store i8 0, i8* %15, align 4
  %16 = load %struct.roff*, %struct.roff** %2, align 8
  %17 = getelementptr inbounds %struct.roff, %struct.roff* %16, i32 0, i32 3
  store i8 92, i8* %17, align 1
  store i64 0, i64* @roffce_lines, align 8
  store i32* null, i32** @roffce_node, align 8
  store i64 0, i64* @roffit_lines, align 8
  store i32* null, i32** @roffit_macro, align 8
  ret void
}

declare dso_local i32 @roff_free1(%struct.roff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
