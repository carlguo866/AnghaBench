; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-masterinfo.c_network_mysqld_masterinfo_free.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-masterinfo.c_network_mysqld_masterinfo_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @network_mysqld_masterinfo_free(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %54

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TRUE, align 4
  %11 = call i32 @g_string_free(i32 %9, i32 %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @g_string_free(i32 %14, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i32 @g_string_free(i32 %19, i32 %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i32 @g_string_free(i32 %24, i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i32 @g_string_free(i32 %29, i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @g_string_free(i32 %34, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TRUE, align 4
  %41 = call i32 @g_string_free(i32 %39, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @g_string_free(i32 %44, i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 @g_string_free(i32 %49, i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = call i32 @g_free(%struct.TYPE_4__* %52)
  br label %54

54:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @g_string_free(i32, i32) #1

declare dso_local i32 @g_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
