; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_decoder_test.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/tools/extr_insn_decoder_test.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Usage: objdump -d a.out | awk -f objdump_reformat.awk | %s [-y|-n] [-v]\0A\00", align 1
@prog = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"\09-y\0964bit mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\09-n\0932bit mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\09-v\09verbose mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8*, i8** @prog, align 8
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %10 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
