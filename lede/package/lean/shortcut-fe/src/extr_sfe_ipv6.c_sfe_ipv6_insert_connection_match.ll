; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_insert_connection_match.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_sfe_ipv6.c_sfe_ipv6_insert_connection_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfe_ipv6 = type { %struct.sfe_ipv6_connection_match** }
%struct.sfe_ipv6_connection_match = type { %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match*, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfe_ipv6*, %struct.sfe_ipv6_connection_match*)* @sfe_ipv6_insert_connection_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfe_ipv6_insert_connection_match(%struct.sfe_ipv6* %0, %struct.sfe_ipv6_connection_match* %1) #0 {
  %3 = alloca %struct.sfe_ipv6*, align 8
  %4 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %5 = alloca %struct.sfe_ipv6_connection_match**, align 8
  %6 = alloca %struct.sfe_ipv6_connection_match*, align 8
  %7 = alloca i32, align 4
  store %struct.sfe_ipv6* %0, %struct.sfe_ipv6** %3, align 8
  store %struct.sfe_ipv6_connection_match* %1, %struct.sfe_ipv6_connection_match** %4, align 8
  %8 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %9 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %12 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %15 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %18 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %21 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %24 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sfe_ipv6_get_connection_match_hash(i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.sfe_ipv6*, %struct.sfe_ipv6** %3, align 8
  %28 = getelementptr inbounds %struct.sfe_ipv6, %struct.sfe_ipv6* %27, i32 0, i32 0
  %29 = load %struct.sfe_ipv6_connection_match**, %struct.sfe_ipv6_connection_match*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %29, i64 %31
  store %struct.sfe_ipv6_connection_match** %32, %struct.sfe_ipv6_connection_match*** %5, align 8
  %33 = load %struct.sfe_ipv6_connection_match**, %struct.sfe_ipv6_connection_match*** %5, align 8
  %34 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %33, align 8
  store %struct.sfe_ipv6_connection_match* %34, %struct.sfe_ipv6_connection_match** %6, align 8
  %35 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %36 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %35, i32 0, i32 1
  store %struct.sfe_ipv6_connection_match* null, %struct.sfe_ipv6_connection_match** %36, align 8
  %37 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %6, align 8
  %38 = icmp ne %struct.sfe_ipv6_connection_match* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %41 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %6, align 8
  %42 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %41, i32 0, i32 1
  store %struct.sfe_ipv6_connection_match* %40, %struct.sfe_ipv6_connection_match** %42, align 8
  br label %43

43:                                               ; preds = %39, %2
  %44 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %6, align 8
  %45 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %46 = getelementptr inbounds %struct.sfe_ipv6_connection_match, %struct.sfe_ipv6_connection_match* %45, i32 0, i32 0
  store %struct.sfe_ipv6_connection_match* %44, %struct.sfe_ipv6_connection_match** %46, align 8
  %47 = load %struct.sfe_ipv6_connection_match*, %struct.sfe_ipv6_connection_match** %4, align 8
  %48 = load %struct.sfe_ipv6_connection_match**, %struct.sfe_ipv6_connection_match*** %5, align 8
  store %struct.sfe_ipv6_connection_match* %47, %struct.sfe_ipv6_connection_match** %48, align 8
  ret void
}

declare dso_local i32 @sfe_ipv6_get_connection_match_hash(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
