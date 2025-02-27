; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_datagencli.c_usage.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_datagencli.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Compressible data generator\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Usage :\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"      %s [size] [args]\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Arguments :\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c" -g#    : generate # data (default:%i)\0A\00", align 1
@SIZE_DEFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c" -s#    : Select seed (default:%i)\0A\00", align 1
@SEED_DEFAULT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c" -P#    : Select compressibility in %% (default:%i%%)\0A\00", align 1
@COMPRESSIBILITY_DEFAULT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c" -h     : display help and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Special values :\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c" -P0    : generate incompressible noise\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c" -P100  : generate sparse files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %5)
  %7 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %9 = load i32, i32* @SIZE_DEFAULT, align 4
  %10 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @SEED_DEFAULT, align 4
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @COMPRESSIBILITY_DEFAULT, align 4
  %14 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %13)
  %15 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DISPLAY(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
