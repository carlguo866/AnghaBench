; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_print_SCp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_fas216.c_print_SCp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_pointer = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"%sptr %p this_residual 0x%x buffer %p buffers_residual 0x%x%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_pointer*, i8*, i8*)* @print_SCp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_SCp(%struct.scsi_pointer* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.scsi_pointer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.scsi_pointer* %0, %struct.scsi_pointer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load %struct.scsi_pointer*, %struct.scsi_pointer** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.scsi_pointer*, %struct.scsi_pointer** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.scsi_pointer*, %struct.scsi_pointer** %4, align 8
  %15 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.scsi_pointer*, %struct.scsi_pointer** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_pointer, %struct.scsi_pointer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %7, i32 %10, i32 %13, i32 %16, i32 %19, i8* %20)
  ret void
}

declare dso_local i32 @printk(i8*, i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
