; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_command_begin.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-binlog.c_dump_command_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_copyexec_main_command_begin = type { i32, i32, i32, i8*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"LEV_COPYEXEC_MAIN_COMMAND_BEGIN\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%d\09%d\09%d\09%.*s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_command_begin(%struct.lev_copyexec_main_command_begin* %0) #0 {
  %2 = alloca %struct.lev_copyexec_main_command_begin*, align 8
  store %struct.lev_copyexec_main_command_begin* %0, %struct.lev_copyexec_main_command_begin** %2, align 8
  %3 = call i64 @dump_line_header(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %24

6:                                                ; preds = %1
  %7 = load i32, i32* @out, align 4
  %8 = load %struct.lev_copyexec_main_command_begin*, %struct.lev_copyexec_main_command_begin** %2, align 8
  %9 = getelementptr inbounds %struct.lev_copyexec_main_command_begin, %struct.lev_copyexec_main_command_begin* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.lev_copyexec_main_command_begin*, %struct.lev_copyexec_main_command_begin** %2, align 8
  %12 = getelementptr inbounds %struct.lev_copyexec_main_command_begin, %struct.lev_copyexec_main_command_begin* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.lev_copyexec_main_command_begin*, %struct.lev_copyexec_main_command_begin** %2, align 8
  %15 = getelementptr inbounds %struct.lev_copyexec_main_command_begin, %struct.lev_copyexec_main_command_begin* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.lev_copyexec_main_command_begin*, %struct.lev_copyexec_main_command_begin** %2, align 8
  %18 = getelementptr inbounds %struct.lev_copyexec_main_command_begin, %struct.lev_copyexec_main_command_begin* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.lev_copyexec_main_command_begin*, %struct.lev_copyexec_main_command_begin** %2, align 8
  %21 = getelementptr inbounds %struct.lev_copyexec_main_command_begin, %struct.lev_copyexec_main_command_begin* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %13, i32 %16, i8* %19, i32 %22)
  br label %24

24:                                               ; preds = %6, %5
  ret void
}

declare dso_local i64 @dump_line_header(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
