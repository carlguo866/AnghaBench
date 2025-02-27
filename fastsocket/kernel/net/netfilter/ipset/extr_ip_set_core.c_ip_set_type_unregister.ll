; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_type_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_type_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set_type = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"ip_set type %s, family %s, revision %u not registered\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"type %s, family %s, revision %u unregistered.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_set_type_unregister(%struct.ip_set_type* %0) #0 {
  %2 = alloca %struct.ip_set_type*, align 8
  store %struct.ip_set_type* %0, %struct.ip_set_type** %2, align 8
  %3 = call i32 (...) @ip_set_type_lock()
  %4 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %5 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %8 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %11 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @find_set_type(i32 %6, i32 %9, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %17 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %20 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @family_name(i32 %21)
  %23 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %24 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_warning(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %22, i32 %25)
  br label %42

27:                                               ; preds = %1
  %28 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %29 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %28, i32 0, i32 3
  %30 = call i32 @list_del_rcu(i32* %29)
  %31 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %32 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %35 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @family_name(i32 %36)
  %38 = load %struct.ip_set_type*, %struct.ip_set_type** %2, align 8
  %39 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %27, %15
  %43 = call i32 (...) @ip_set_type_unlock()
  %44 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local i32 @ip_set_type_lock(...) #1

declare dso_local i32 @find_set_type(i32, i32, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32, i32) #1

declare dso_local i32 @family_name(i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @ip_set_type_unlock(...) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
