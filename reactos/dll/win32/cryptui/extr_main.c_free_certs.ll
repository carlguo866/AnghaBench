; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_free_certs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptui/extr_main.c_free_certs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@LVM_GETITEMCOUNT = common dso_local global i32 0, align 4
@LVIF_PARAM = common dso_local global i32 0, align 4
@LVM_GETITEMW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @free_certs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_certs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @LVM_GETITEMCOUNT, align 4
  %8 = call i32 @SendMessageW(i32 %6, i32 %7, i32 0, i32 0)
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load i32, i32* @LVIF_PARAM, align 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @LVM_GETITEMW, align 4
  %21 = ptrtoint %struct.TYPE_2__* %3 to i32
  %22 = call i32 @SendMessageW(i32 %19, i32 %20, i32 0, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @CertFreeCertificateContext(i32 %25)
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %9

30:                                               ; preds = %9
  ret void
}

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

declare dso_local i32 @CertFreeCertificateContext(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
