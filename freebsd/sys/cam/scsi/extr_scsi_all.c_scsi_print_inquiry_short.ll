; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_print_inquiry_short.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_print_inquiry_short.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_inquiry_data = type { i32 }
%struct.sbuf = type { i32 }

@SBUF_FIXEDLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_print_inquiry_short(%struct.scsi_inquiry_data* %0) #0 {
  %2 = alloca %struct.scsi_inquiry_data*, align 8
  %3 = alloca %struct.sbuf, align 4
  %4 = alloca [84 x i8], align 16
  store %struct.scsi_inquiry_data* %0, %struct.scsi_inquiry_data** %2, align 8
  %5 = getelementptr inbounds [84 x i8], [84 x i8]* %4, i64 0, i64 0
  %6 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %7 = call i32 @sbuf_new(%struct.sbuf* %3, i8* %5, i32 84, i32 %6)
  %8 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %2, align 8
  %9 = call i32 @scsi_print_inquiry_short_sbuf(%struct.sbuf* %3, %struct.scsi_inquiry_data* %8)
  %10 = call i32 @sbuf_finish(%struct.sbuf* %3)
  %11 = call i32 @sbuf_putbuf(%struct.sbuf* %3)
  ret void
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @scsi_print_inquiry_short_sbuf(%struct.sbuf*, %struct.scsi_inquiry_data*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_putbuf(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
