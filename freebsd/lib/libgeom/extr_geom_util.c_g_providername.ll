; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_util.c_g_providername.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgeom/extr_geom_util.c_g_providername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@DIOCGPROVIDERNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @g_providername(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @MAXPATHLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @DIOCGPROVIDERNAME, align 4
  %13 = call i32 @g_ioctl_arg(i32 %11, i32 %12, i8* %10)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %6, align 4
  br label %18

16:                                               ; preds = %1
  %17 = call i8* @strdup(i8* %10)
  store i8* %17, i8** %2, align 8
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %19)
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_ioctl_arg(i32, i32, i8*) #2

declare dso_local i8* @strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
