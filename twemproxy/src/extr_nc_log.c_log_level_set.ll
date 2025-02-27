; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c_log_level_set.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_log.c_log_level_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.logger = type { i32 }

@logger = common dso_local global %struct.logger zeroinitializer, align 4
@LOG_EMERG = common dso_local global i32 0, align 4
@LOG_PVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"set log level to %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_level_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.logger*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.logger* @logger, %struct.logger** %3, align 8
  %4 = load i32, i32* @LOG_EMERG, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @LOG_PVERB, align 4
  %7 = call i32 @MIN(i32 %5, i32 %6)
  %8 = call i32 @MAX(i32 %4, i32 %7)
  %9 = load %struct.logger*, %struct.logger** %3, align 8
  %10 = getelementptr inbounds %struct.logger, %struct.logger* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.logger*, %struct.logger** %3, align 8
  %12 = getelementptr inbounds %struct.logger, %struct.logger* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @loga(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %13)
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @loga(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
