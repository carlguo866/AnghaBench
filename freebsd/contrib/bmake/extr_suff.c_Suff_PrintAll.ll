; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_Suff_PrintAll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bmake/extr_suff.c_Suff_PrintAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"#*** Suffixes:\0A\00", align 1
@sufflist = common dso_local global i32 0, align 4
@SuffPrintSuff = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"#*** Transformations:\0A\00", align 1
@transforms = common dso_local global i32 0, align 4
@SuffPrintTrans = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Suff_PrintAll() #0 {
  %1 = load i32, i32* @debug_file, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @sufflist, align 4
  %4 = load i32, i32* @SuffPrintSuff, align 4
  %5 = call i32 @Lst_ForEach(i32 %3, i32 %4, i32* null)
  %6 = load i32, i32* @debug_file, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @transforms, align 4
  %9 = load i32, i32* @SuffPrintTrans, align 4
  %10 = call i32 @Lst_ForEach(i32 %8, i32 %9, i32* null)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @Lst_ForEach(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
