; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_issue_cmd_external_user.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_psp-dev.c_sev_issue_cmd_external_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }

@sev_fops = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sev_issue_cmd_external_user(%struct.file* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.file*, %struct.file** %6, align 8
  %11 = icmp ne %struct.file* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.file*, %struct.file** %6, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, @sev_fops
  br i1 %16, label %17, label %20

17:                                               ; preds = %12, %4
  %18 = load i32, i32* @EBADF, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @sev_do_cmd(i32 %21, i8* %22, i32* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @sev_do_cmd(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
