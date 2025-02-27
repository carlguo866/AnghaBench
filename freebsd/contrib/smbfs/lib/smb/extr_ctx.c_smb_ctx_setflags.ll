; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { i32 }
%struct.smbioc_flags = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMBIOC_SETFLAGS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_setflags(%struct.smb_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.smbioc_flags, align 4
  store %struct.smb_ctx* %0, %struct.smb_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %5, align 4
  br label %33

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.smbioc_flags, %struct.smbioc_flags* %10, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.smbioc_flags, %struct.smbioc_flags* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds %struct.smbioc_flags, %struct.smbioc_flags* %10, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SMBIOC_SETFLAGS, align 4
  %28 = call i32 @ioctl(i32 %26, i32 %27, %struct.smbioc_flags* %10)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %5, align 4
  br label %33

32:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %30, %15
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @ioctl(i32, i32, %struct.smbioc_flags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
