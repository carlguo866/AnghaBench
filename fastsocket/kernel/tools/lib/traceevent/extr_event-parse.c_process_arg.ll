; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_process_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_process_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.print_arg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_format*, %struct.print_arg*, i8**)* @process_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_arg(%struct.event_format* %0, %struct.print_arg* %1, i8** %2) #0 {
  %4 = alloca %struct.event_format*, align 8
  %5 = alloca %struct.print_arg*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.event_format* %0, %struct.event_format** %4, align 8
  store %struct.print_arg* %1, %struct.print_arg** %5, align 8
  store i8** %2, i8*** %6, align 8
  %9 = call i32 @read_token(i8** %8)
  store i32 %9, i32* %7, align 4
  %10 = load i8*, i8** %8, align 8
  %11 = load i8**, i8*** %6, align 8
  store i8* %10, i8** %11, align 8
  %12 = load %struct.event_format*, %struct.event_format** %4, align 8
  %13 = load %struct.print_arg*, %struct.print_arg** %5, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @process_arg_token(%struct.event_format* %12, %struct.print_arg* %13, i8** %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @read_token(i8**) #1

declare dso_local i32 @process_arg_token(%struct.event_format*, %struct.print_arg*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
