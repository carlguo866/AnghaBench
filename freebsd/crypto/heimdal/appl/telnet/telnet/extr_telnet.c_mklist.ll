; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_mklist.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_mklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@name_unknown = common dso_local global i8* null, align 8
@unknown = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i8*)* @mklist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @mklist(i8* %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = icmp sgt i32 %17, 40
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  store i8* null, i8** %5, align 8
  %20 = load i8*, i8** @name_unknown, align 8
  %21 = load i8**, i8*** @unknown, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  store i8* %20, i8** %22, align 8
  br label %29

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = load i8**, i8*** @unknown, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strupr(i8* %27)
  br label %29

29:                                               ; preds = %23, %19
  br label %34

30:                                               ; preds = %2
  %31 = load i8*, i8** @name_unknown, align 8
  %32 = load i8**, i8*** @unknown, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %30, %29
  store i32 1, i32* %6, align 4
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %57, %34
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 58
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ false, %36 ], [ %45, %41 ]
  br i1 %47, label %48, label %60

48:                                               ; preds = %46
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 124
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  br label %36

60:                                               ; preds = %46
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = call i64 @malloc(i32 %65)
  %67 = inttoptr i64 %66 to i8**
  store i8** %67, i8*** %11, align 8
  %68 = load i8**, i8*** %11, align 8
  %69 = icmp eq i8** %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i8**, i8*** @unknown, align 8
  store i8** %71, i8*** %3, align 8
  br label %247

72:                                               ; preds = %60
  %73 = load i8**, i8*** %11, align 8
  store i8* null, i8** %73, align 8
  %74 = load i8**, i8*** %11, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 1
  store i8** %75, i8*** %9, align 8
  store i32 0, i32* %6, align 4
  %76 = load i8*, i8** %4, align 8
  store i8* %76, i8** %10, align 8
  store i8* %76, i8** %8, align 8
  br label %77

77:                                               ; preds = %168, %72
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  store i8 %79, i8* %7, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %171

81:                                               ; preds = %77
  %82 = load i8, i8* %7, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 124
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i8, i8* %7, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 58
  br i1 %88, label %89, label %148

89:                                               ; preds = %85, %81
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %8, align 8
  store i8 0, i8* %90, align 1
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load i8*, i8** %8, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = icmp sgt i64 %99, 41
  br i1 %100, label %101, label %102

101:                                              ; preds = %94, %89
  br label %132

102:                                              ; preds = %94
  %103 = load i8*, i8** %5, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %119

105:                                              ; preds = %102
  %106 = load i8*, i8** %5, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = ptrtoint i8* %108 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = call i64 @strncasecmp(i8* %106, i8* %107, i32 %113)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load i8*, i8** %10, align 8
  %118 = load i8**, i8*** %11, align 8
  store i8* %117, i8** %118, align 8
  br label %131

119:                                              ; preds = %105, %102
  %120 = load i8*, i8** %10, align 8
  %121 = load i8**, i8*** %11, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8**, i8*** %9, align 8
  %124 = call i64 @is_unique(i8* %120, i8** %122, i8** %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load i8*, i8** %10, align 8
  %128 = load i8**, i8*** %9, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i32 1
  store i8** %129, i8*** %9, align 8
  store i8* %127, i8** %128, align 8
  br label %130

130:                                              ; preds = %126, %119
  br label %131

131:                                              ; preds = %130, %116
  br label %132

132:                                              ; preds = %131, %101
  %133 = load i8, i8* %7, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 58
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %171

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %143, %137
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  store i8 %140, i8* %7, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 124
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i8*, i8** %8, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %8, align 8
  br label %138

146:                                              ; preds = %138
  %147 = load i8*, i8** %8, align 8
  store i8* %147, i8** %10, align 8
  store i32 0, i32* %6, align 4
  br label %148

148:                                              ; preds = %146, %85
  %149 = load i8, i8* %7, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 32
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = load i8, i8* %7, align 1
  %154 = sext i8 %153 to i32
  %155 = and i32 %154, 128
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152, %148
  store i32 1, i32* %6, align 4
  br label %167

158:                                              ; preds = %152
  %159 = load i8, i8* %7, align 1
  %160 = call i64 @islower(i8 zeroext %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i8, i8* %7, align 1
  %164 = call signext i8 @toupper(i8 zeroext %163)
  %165 = load i8*, i8** %8, align 8
  store i8 %164, i8* %165, align 1
  br label %166

166:                                              ; preds = %162, %158
  br label %167

167:                                              ; preds = %166, %157
  br label %168

168:                                              ; preds = %167
  %169 = load i8*, i8** %8, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %8, align 8
  br label %77

171:                                              ; preds = %136, %77
  %172 = load i8**, i8*** %11, align 8
  %173 = getelementptr inbounds i8*, i8** %172, i64 1
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** %4, align 8
  %176 = icmp eq i8* %174, %175
  br i1 %176, label %177, label %204

177:                                              ; preds = %171
  %178 = load i8**, i8*** %11, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 1
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @strlen(i8* %180)
  %182 = icmp eq i32 %181, 2
  br i1 %182, label %183, label %204

183:                                              ; preds = %177
  %184 = load i8**, i8*** %9, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i32 -1
  store i8** %185, i8*** %9, align 8
  %186 = load i8**, i8*** %11, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 1
  store i8** %187, i8*** %12, align 8
  br label %188

188:                                              ; preds = %197, %183
  %189 = load i8**, i8*** %12, align 8
  %190 = load i8**, i8*** %9, align 8
  %191 = icmp ult i8** %189, %190
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = load i8**, i8*** %12, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i8**, i8*** %12, align 8
  store i8* %195, i8** %196, align 8
  br label %197

197:                                              ; preds = %192
  %198 = load i8**, i8*** %12, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i32 1
  store i8** %199, i8*** %12, align 8
  br label %188

200:                                              ; preds = %188
  %201 = load i8*, i8** %4, align 8
  %202 = load i8**, i8*** %9, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i32 1
  store i8** %203, i8*** %9, align 8
  store i8* %201, i8** %202, align 8
  br label %204

204:                                              ; preds = %200, %177, %171
  %205 = load i8**, i8*** %9, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 -1
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %8, align 8
  %208 = load i8*, i8** %8, align 8
  %209 = load i8**, i8*** %9, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i32 1
  store i8** %210, i8*** %9, align 8
  store i8* %208, i8** %209, align 8
  %211 = load i8**, i8*** %9, align 8
  store i8* null, i8** %211, align 8
  %212 = load i8**, i8*** %11, align 8
  %213 = load i8*, i8** %212, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %239

215:                                              ; preds = %204
  %216 = load i8*, i8** %5, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i8*, i8** %5, align 8
  %220 = load i8**, i8*** %11, align 8
  store i8* %219, i8** %220, align 8
  br label %238

221:                                              ; preds = %215
  %222 = load i8**, i8*** %9, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i32 -1
  store i8** %223, i8*** %9, align 8
  %224 = load i8**, i8*** %11, align 8
  store i8** %224, i8*** %12, align 8
  br label %225

225:                                              ; preds = %234, %221
  %226 = load i8**, i8*** %12, align 8
  %227 = load i8**, i8*** %9, align 8
  %228 = icmp ult i8** %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %225
  %230 = load i8**, i8*** %12, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 1
  %232 = load i8*, i8** %231, align 8
  %233 = load i8**, i8*** %12, align 8
  store i8* %232, i8** %233, align 8
  br label %234

234:                                              ; preds = %229
  %235 = load i8**, i8*** %12, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i32 1
  store i8** %236, i8*** %12, align 8
  br label %225

237:                                              ; preds = %225
  br label %238

238:                                              ; preds = %237, %218
  br label %239

239:                                              ; preds = %238, %204
  %240 = load i8**, i8*** %11, align 8
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i8**, i8*** %11, align 8
  store i8** %244, i8*** %3, align 8
  br label %247

245:                                              ; preds = %239
  %246 = load i8**, i8*** @unknown, align 8
  store i8** %246, i8*** %3, align 8
  br label %247

247:                                              ; preds = %245, %243, %70
  %248 = load i8**, i8*** %3, align 8
  ret i8** %248
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strupr(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @is_unique(i8*, i8**, i8**) #1

declare dso_local i64 @islower(i8 zeroext) #1

declare dso_local signext i8 @toupper(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
