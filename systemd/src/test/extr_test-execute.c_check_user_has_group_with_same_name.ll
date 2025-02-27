; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-execute.c_check_user_has_group_with_same_name.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-execute.c_check_user_has_group_with_same_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32 }
%struct.group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @check_user_has_group_with_same_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_user_has_group_with_same_name(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca %struct.group*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @assert(i8* %6)
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.passwd* @getpwnam(i8* %8)
  store %struct.passwd* %9, %struct.passwd** %4, align 8
  %10 = load %struct.passwd*, %struct.passwd** %4, align 8
  %11 = icmp ne %struct.passwd* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.passwd*, %struct.passwd** %4, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @streq(i32 %15, i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %36

20:                                               ; preds = %12
  %21 = load %struct.passwd*, %struct.passwd** %4, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.group* @getgrgid(i32 %23)
  store %struct.group* %24, %struct.group** %5, align 8
  %25 = load %struct.group*, %struct.group** %5, align 8
  %26 = icmp ne %struct.group* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.group*, %struct.group** %5, align 8
  %29 = getelementptr inbounds %struct.group, %struct.group* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @streq(i32 %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27, %20
  store i32 0, i32* %2, align 4
  br label %36

35:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34, %19
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @assert(i8*) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @streq(i32, i8*) #1

declare dso_local %struct.group* @getgrgid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
