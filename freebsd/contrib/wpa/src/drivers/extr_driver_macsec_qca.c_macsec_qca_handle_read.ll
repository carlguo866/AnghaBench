; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_qca.c_macsec_qca_handle_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_macsec_qca.c_macsec_qca_handle_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"macsec_qca: recv: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @macsec_qca_handle_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macsec_qca_handle_read(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3000 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds [3000 x i8], [3000 x i8]* %8, i64 0, i64 0
  %11 = call i32 @recv(i32 %9, i8* %10, i32 3000, i32 0)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* @MSG_ERROR, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %24

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds [3000 x i8], [3000 x i8]* %8, i64 0, i64 0
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @macsec_qca_handle_data(i8* %20, i8* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %14
  ret void
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @macsec_qca_handle_data(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
