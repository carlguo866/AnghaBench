; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR53c406a.c_NCR53c406a_biosparm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_NCR53c406a.c_NCR53c406a_biosparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.block_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"NCR53c406a_biosparm called\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*, %struct.block_device*, i32, i32*)* @NCR53c406a_biosparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NCR53c406a_biosparm(%struct.scsi_device* %0, %struct.block_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %5, align 8
  store %struct.block_device* %1, %struct.block_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @DEB(i32 %10)
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 64, i32* %14, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 32, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = ashr i32 %17, 11
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %18, i32* %20, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 1024
  br i1 %24, label %25, label %34

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 255, i32* %27, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 63, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sdiv i32 %30, 16065
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %25, %4
  ret i32 0
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
