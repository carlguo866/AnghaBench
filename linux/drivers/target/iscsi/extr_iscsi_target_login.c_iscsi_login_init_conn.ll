; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_init_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_login.c_iscsi_login_init_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_login = type { i32, %struct.iscsi_login*, i8*, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_login*, %struct.iscsi_login* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to allocate memory for struct iscsi_login.\0A\00", align 1
@MAX_KEY_VALUE_PAIRS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to allocate memory for response buffer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unable to allocate memory for request buffer.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_login* (%struct.iscsi_conn*)* @iscsi_login_init_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_login* @iscsi_login_init_conn(%struct.iscsi_conn* %0) #0 {
  %2 = alloca %struct.iscsi_login*, align 8
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_login*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 32, i32 %5)
  %7 = bitcast i8* %6 to %struct.iscsi_login*
  store %struct.iscsi_login* %7, %struct.iscsi_login** %4, align 8
  %8 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %9 = icmp ne %struct.iscsi_login* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store %struct.iscsi_login* null, %struct.iscsi_login** %2, align 8
  br label %58

12:                                               ; preds = %1
  %13 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 1
  store %struct.iscsi_login* %13, %struct.iscsi_login** %15, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %17 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %17, i32 0, i32 3
  store %struct.iscsi_conn* %16, %struct.iscsi_conn** %18, align 8
  %19 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @MAX_KEY_VALUE_PAIRS, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.iscsi_login*
  %25 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %25, i32 0, i32 1
  store %struct.iscsi_login* %24, %struct.iscsi_login** %26, align 8
  %27 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %27, i32 0, i32 1
  %29 = load %struct.iscsi_login*, %struct.iscsi_login** %28, align 8
  %30 = icmp ne %struct.iscsi_login* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %12
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %55

33:                                               ; preds = %12
  %34 = load i32, i32* @MAX_KEY_VALUE_PAIRS, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  %37 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %33
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %50

45:                                               ; preds = %33
  %46 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %47 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %47, i32 0, i32 0
  store %struct.iscsi_login* %46, %struct.iscsi_login** %48, align 8
  %49 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  store %struct.iscsi_login* %49, %struct.iscsi_login** %2, align 8
  br label %58

50:                                               ; preds = %43
  %51 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %51, i32 0, i32 1
  %53 = load %struct.iscsi_login*, %struct.iscsi_login** %52, align 8
  %54 = call i32 @kfree(%struct.iscsi_login* %53)
  br label %55

55:                                               ; preds = %50, %31
  %56 = load %struct.iscsi_login*, %struct.iscsi_login** %4, align 8
  %57 = call i32 @kfree(%struct.iscsi_login* %56)
  store %struct.iscsi_login* null, %struct.iscsi_login** %2, align 8
  br label %58

58:                                               ; preds = %55, %45, %10
  %59 = load %struct.iscsi_login*, %struct.iscsi_login** %2, align 8
  ret %struct.iscsi_login* %59
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.iscsi_login*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
