; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_scsi.c_scsi_trace_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/plugins/extr_plugin_scsi.c_scsi_trace_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"regions=%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.trace_seq*, i8*, i32)* @scsi_trace_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scsi_trace_unmap(%struct.trace_seq* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %10 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %13 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 7
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %21, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sub i32 %28, 8
  %30 = udiv i32 %29, 16
  %31 = call i32 @trace_seq_printf(%struct.trace_seq* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %33 = call i32 @trace_seq_putc(%struct.trace_seq* %32, i32 0)
  %34 = load i8*, i8** %7, align 8
  ret i8* %34
}

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
