; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_tftp.c_tftp_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_tftp.c_tftp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { %struct.tftp_handle* }
%struct.tftp_handle = type { %struct.tftp_handle*, %struct.tftp_handle* }

@is_open = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*)* @tftp_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_close(%struct.open_file* %0) #0 {
  %2 = alloca %struct.open_file*, align 8
  %3 = alloca %struct.tftp_handle*, align 8
  store %struct.open_file* %0, %struct.open_file** %2, align 8
  %4 = load %struct.open_file*, %struct.open_file** %2, align 8
  %5 = getelementptr inbounds %struct.open_file, %struct.open_file* %4, i32 0, i32 0
  %6 = load %struct.tftp_handle*, %struct.tftp_handle** %5, align 8
  store %struct.tftp_handle* %6, %struct.tftp_handle** %3, align 8
  %7 = load %struct.tftp_handle*, %struct.tftp_handle** %3, align 8
  %8 = icmp ne %struct.tftp_handle* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.tftp_handle*, %struct.tftp_handle** %3, align 8
  %11 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %10, i32 0, i32 1
  %12 = load %struct.tftp_handle*, %struct.tftp_handle** %11, align 8
  %13 = call i32 @free(%struct.tftp_handle* %12)
  %14 = load %struct.tftp_handle*, %struct.tftp_handle** %3, align 8
  %15 = getelementptr inbounds %struct.tftp_handle, %struct.tftp_handle* %14, i32 0, i32 0
  %16 = load %struct.tftp_handle*, %struct.tftp_handle** %15, align 8
  %17 = call i32 @free(%struct.tftp_handle* %16)
  %18 = load %struct.tftp_handle*, %struct.tftp_handle** %3, align 8
  %19 = call i32 @free(%struct.tftp_handle* %18)
  br label %20

20:                                               ; preds = %9, %1
  store i64 0, i64* @is_open, align 8
  ret i32 0
}

declare dso_local i32 @free(%struct.tftp_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
