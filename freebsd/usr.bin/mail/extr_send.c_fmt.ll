; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_send.c_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name = type { i8*, %struct.name* }

@.str = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmt(i8* %0, %struct.name* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.name*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.name* %1, %struct.name** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @fputs(i8* %20, i32* %21)
  br label %23

23:                                               ; preds = %19, %4
  br label %24

24:                                               ; preds = %72, %23
  %25 = load %struct.name*, %struct.name** %6, align 8
  %26 = icmp ne %struct.name* %25, null
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = load %struct.name*, %struct.name** %6, align 8
  %29 = getelementptr inbounds %struct.name, %struct.name* %28, i32 0, i32 1
  %30 = load %struct.name*, %struct.name** %29, align 8
  %31 = icmp eq %struct.name* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load %struct.name*, %struct.name** %6, align 8
  %35 = getelementptr inbounds %struct.name, %struct.name* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strlen(i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = icmp sgt i32 %44, 72
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 4
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @fprintf(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 4, i32* %9, align 4
  br label %55

52:                                               ; preds = %46, %33
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @fprintf(i32* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.name*, %struct.name** %6, align 8
  %57 = getelementptr inbounds %struct.name, %struct.name* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @fputs(i8* %58, i32* %59)
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @fprintf(i32* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %66
  %73 = load %struct.name*, %struct.name** %6, align 8
  %74 = getelementptr inbounds %struct.name, %struct.name* %73, i32 0, i32 1
  %75 = load %struct.name*, %struct.name** %74, align 8
  store %struct.name* %75, %struct.name** %6, align 8
  br label %24

76:                                               ; preds = %24
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @fprintf(i32* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
