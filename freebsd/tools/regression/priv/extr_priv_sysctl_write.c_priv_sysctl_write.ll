; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sysctl_write.c_priv_sysctl_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sysctl_write.c_priv_sysctl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }

@KERN_DOMAINNAME_STRING = common dso_local global i32 0, align 4
@stored_domainname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"priv_sysctl_write(asroot, injail)\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"priv_sysctl_write(asroot, !injail)\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"priv_sysctl_write(!asroot, injail)\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"priv_sysctl_write(!asroot, !injail)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_sysctl_write(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %8 = load i32, i32* @KERN_DOMAINNAME_STRING, align 4
  %9 = load i32, i32* @stored_domainname, align 4
  %10 = load i32, i32* @stored_domainname, align 4
  %11 = call i32 @strlen(i32 %10)
  %12 = call i32 @sysctlbyname(i32 %8, i32* null, i32* null, i32 %9, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @EPERM, align 4
  %21 = call i32 @expect(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %19, i32 -1, i32 %20)
  br label %22

22:                                               ; preds = %18, %15, %3
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @expect(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 0, i32 0)
  br label %31

31:                                               ; preds = %28, %25, %22
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @EPERM, align 4
  %40 = call i32 @expect(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 -1, i32 %39)
  br label %41

41:                                               ; preds = %37, %34, %31
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @EPERM, align 4
  %50 = call i32 @expect(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 -1, i32 %49)
  br label %51

51:                                               ; preds = %47, %44, %41
  ret void
}

declare dso_local i32 @sysctlbyname(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @expect(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
