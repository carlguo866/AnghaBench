; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkwrggimg.c_usage.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_mkwrggimg.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Usage: %s [OPTIONS...]\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [390 x i8] c"\0AOptions:\0A  -b              create image in big endian format\0A  -B <buildno>    build number\0A  -i <file>       read input from the file <file>\0A  -d <name>       set device name to <name>\0A  -m <model>      model name\0A  -o <file>       write output to the file <file>\0A  -O <offset>     set offset to <offset>\0A  -s <sig>        set image signature to <sig>\0A  -h              show this screen\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usage(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @EXIT_SUCCESS, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32*, i32** @stderr, align 8
  br label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** @stdout, align 8
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32* [ %8, %7 ], [ %10, %9 ]
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = load i8*, i8** @progname, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([390 x i8], [390 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @exit(i32 %18) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

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
