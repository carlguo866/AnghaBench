; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_subr.c_smb_printb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_subr.c_smb_printb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_bitname = type { i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @smb_printb(i8* %0, i32 %1, %struct.smb_bitname* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smb_bitname*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.smb_bitname* %2, %struct.smb_bitname** %6, align 8
  store i32 1, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strcpy(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %43, %3
  %11 = load %struct.smb_bitname*, %struct.smb_bitname** %6, align 8
  %12 = getelementptr inbounds %struct.smb_bitname, %struct.smb_bitname* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.smb_bitname*, %struct.smb_bitname** %6, align 8
  %18 = getelementptr inbounds %struct.smb_bitname, %struct.smb_bitname* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.smb_bitname*, %struct.smb_bitname** %6, align 8
  %25 = getelementptr inbounds %struct.smb_bitname, %struct.smb_bitname* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcat(i8* %23, i8* %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %22, %15
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.smb_bitname*, %struct.smb_bitname** %6, align 8
  %34 = getelementptr inbounds %struct.smb_bitname, %struct.smb_bitname* %33, i64 1
  %35 = getelementptr inbounds %struct.smb_bitname, %struct.smb_bitname* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @strcat(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %31, %28
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.smb_bitname*, %struct.smb_bitname** %6, align 8
  %45 = getelementptr inbounds %struct.smb_bitname, %struct.smb_bitname* %44, i32 1
  store %struct.smb_bitname* %45, %struct.smb_bitname** %6, align 8
  br label %10

46:                                               ; preds = %10
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strcat(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
