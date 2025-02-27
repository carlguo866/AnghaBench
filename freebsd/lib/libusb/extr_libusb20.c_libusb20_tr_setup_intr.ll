; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32, i8*, i8**, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libusb20_tr_setup_intr(%struct.libusb20_transfer* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.libusb20_transfer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @libusb20_pass_ptr(i8* %9)
  %11 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %12 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %10, i32* %14, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %17 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %16, i32 0, i32 2
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  store i8* %15, i8** %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %22 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %5, align 8
  %24 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  ret void
}

declare dso_local i32 @libusb20_pass_ptr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
